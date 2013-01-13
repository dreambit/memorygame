#include "s3e.h"
#include "Iw2D.h"
#include "game.h"

GameCondition::GameCondition()
{
	complexity = 1;
	timeleft = 50000;
	points = 0;
}


Sprite::Sprite(char *src)
{
	image = Iw2DCreateImage(src);
	position = new CIwSVec2(0, 0);
	size = new CIwSVec2(128, 128);
}


Sprite::~Sprite()
{
	delete image;
}


void Sprite::Draw()
{
	Iw2DDrawImage(image, *position, *size);
}


AnimatedSprite::AnimatedSprite()
{
	sprites = new CIwArray<Sprite>();
}


AnimatedSprite::~AnimatedSprite()
{
	sprites->clear();
	delete sprites;
}


Game::Game()
{
	size = new CIwSVec2();
	gameCondition = new GameCondition();
	gameElements = new CIwArray<IGameElement>();
}


Game::~Game()
{
	delete size;
	delete gameCondition;
	delete gameElements;
}


void Game::Render()
{
	for (CIwArray<IGameElement>::iterator it = gameElements->begin(); it != gameElements->end(); it++)
	{
		it->Draw();
	}
}


void Game::Update()
{
	for (CIwArray<IGameElement>::iterator it = gameElements->begin(); it != gameElements->end(); it++)
	{
		it->Update();
	}
}


void Game::NewGame()
{
	for (CIwArray<IGameElement>::iterator it = gameElements->begin(); it != gameElements->end(); it++)
	{
		it->Restart();
	}

}


void Game::AddGameElement(IGameElement *element)
{
	gameElements->push_back(*element);
}
