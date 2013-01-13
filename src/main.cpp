#include "s3e.h"
#include "Iw2D.h"
#include "game.h"

int main()
{
    Iw2DInit();
    Game* game = new Game();
	game->NewGame();
    while(!s3eDeviceCheckQuitRequest())
    {
		Iw2DSurfaceClear(0xff000000);
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
