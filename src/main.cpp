#include "s3e.h"
#include "Iw2D.h"
#include "game.h"

// updates per second
#define UPS 60
#define MAX_UPDATES 6

int GetUpdateFrame()
{
    return (int)(s3eTimerGetMs() / (1000/UPS));
}

Game* game;

int32 MouseEventCallback(s3ePointerEvent* apButtonEvent, void* apUserData)
{
  if (apButtonEvent->m_Button == S3E_POINTER_BUTTON_SELECT)
  {
    if (apButtonEvent->m_Pressed)
    {
      game->onPress(new CIwSVec2(apButtonEvent->m_x, apButtonEvent->m_y));
    }
  }
  return 0;
}

int main()
{

    Iw2DInit();
    game = new Game();
	game->Initialize();
	game->NewGame();
	int currentUpdate = GetUpdateFrame();
    int nextUpdate = currentUpdate;
	s3ePointerRegister(S3E_POINTER_BUTTON_EVENT, (s3eCallback) MouseEventCallback, NULL);
    while(!s3eDeviceCheckQuitRequest())
    {
		 while(!s3eDeviceCheckQuitRequest())
        {
            nextUpdate = GetUpdateFrame();
            if( nextUpdate != currentUpdate )
                break;
            s3eDeviceYield(1);
        }

		// execute update steps
        int frames = nextUpdate - currentUpdate;
        frames = MIN(MAX_UPDATES, frames);
        while(frames--)
        {
            game->Update();
        }

		Iw2DSurfaceClear(0xffffffff);
		game->Render();
		Iw2DSurfaceShow();
        s3ePointerUpdate();
        s3eKeyboardUpdate();
        s3eDeviceYield();
    }

    delete game;

    Iw2DTerminate();

    return 0;
}
