#include "s3e.h"
#include "Iw2D.h"
#include "game.h"


GameCondition::GameCondition()
{
	complexity = 1;
	timeleft = 50000;
	points = 0;
	resolution = new CIwSVec2(Iw2DGetSurfaceWidth(), Iw2DGetSurfaceHeight());
}


GameCondition::GameCondition(uint32 complexity)
{
	this->complexity = complexity;
	timeleft = 50000;
	points = 0;
	resolution = new CIwSVec2(Iw2DGetSurfaceWidth(), Iw2DGetSurfaceHeight());
}


Sprite::Sprite(char *src)
{
	image = Iw2DCreateImage(src);
	position = new CIwSVec2(0, 0);
	size = new CIwSVec2(64, 64);
}


Sprite::~Sprite()
{
	delete image;
	delete size;
	delete position;
}


void Sprite::Draw()
{
	Iw2DDrawImage(image, *position, *size);
}


void Sprite::Update(){}


SecretBox::SecretBox() : Sprite("q.png")
{

}


SecretBox::~SecretBox()
{
}


SecretBoxArea::SecretBoxArea()
{
	
}


void SecretBoxArea::Draw()
{
	for(uint32 i = 0; i < secretboxes.size(); i++)
		Iw2DDrawImage(secretboxes[i]->image, *(secretboxes[i]->position), *(secretboxes[i]->size));
}


void SecretBoxArea::Update(){}


void SecretBoxArea::Init(GameCondition gameCondition)
{
	boxSize = getBoxSize(gameCondition.resolution, 10);

	for(int i = 0; i < 10; i++)
	{
		for(int j = 0; j < 10; j++)
		{
			SecretBox *s = new SecretBox();
			s->position = new CIwSVec2(j * boxSize->x, i * boxSize->y);
			s->size = boxSize;
			secretboxes.push_back(s);
		}
	}
}


CIwSVec2* SecretBoxArea::getBoxSize(CIwSVec2* resolution, uint32 boxCount)
{
	uint32 width = resolution->x / boxCount;
	uint32 height = resolution->y / boxCount;
	return new CIwSVec2(width, height);
}


SecretBoxArea::~SecretBoxArea()
{
	secretboxes.clear();
}

/*AnimatedSprite::AnimatedSprite()
{
	sprites = new CIwArray<Sprite>();
}


AnimatedSprite::~AnimatedSprite()
{
	sprites->clear();
	delete sprites;
}
*/

Game::Game()
{
	backGround = new Sprite("background.jpg");
	backGround->size = gameCondition.resolution;
}


Game::~Game()
{
}


void Game::Render()
{
	backGround->Draw();
	secretBoxArea.Draw();
}


void Game::Update()
{
	secretBoxArea.Update();
}


void Game::NewGame()
{
	secretBoxArea.Init(gameCondition);
}
