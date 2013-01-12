#include "s3e.h"
#include "Iw2D.h"
#include "game.h"


Game::Game()
{
}


Game::~Game()
{
}


Sprite::Sprite(char *src)
{
	image = Iw2DCreateImage(src);
}


void Sprite::onDraw()
{
	Iw2DDrawImage(image, *position, *size);
}


AnimatedSprite::AnimatedSprite()
{
	sprites = new CIwArray<Sprite>();
}
