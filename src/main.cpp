#include "s3e.h"
#include "Iw2D.h"
#include "game.h"

int main()
{
    Iw2DInit();
    Game* game = new Game();
	Sprite *sprite = new Sprite("q.png");
	game->AddGameElement(sprite);
	game->NewGame();
    while(!s3eDeviceCheckQuitRequest())
    {
		game->Update();
        game->Render();
        s3ePointerUpdate();
        s3eKeyboardUpdate();
        s3eDeviceYield();
    }

    delete game;

    Iw2DTerminate();

    return 0;
}
