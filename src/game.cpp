#include "s3e.h"
#include "Iw2D.h"
#include "game.h"
CIwArray<CIw2DImage*> IMAGE_CACHE;
//-----------------------------------------------------------------------------------------------------GameCondition
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
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------Sprite
Sprite::Sprite(char *src)
{
	image = Iw2DCreateImage(src);
	position = new CIwSVec2(0, 0);
	size = new CIwSVec2(0, 0);
}

Sprite::Sprite()
{
	image = NULL;
	position = new CIwSVec2(0, 0);
	size = new CIwSVec2(0, 0);
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
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------SecretBox
SecretBox::SecretBox(BoxType boxType) : Sprite()
{
	type = boxType;
	opened = false;
	guessed = false;
	locked = false;
	secretImage = IMAGE_CACHE[BOXTYPE_QUESTION];
	mainImage = IMAGE_CACHE[boxType];
}


SecretBox::~SecretBox()
{
	image = NULL;
	delete mainImage;
	delete secretImage;
}


bool SecretBox::isOpened()
{
	return opened;
}


bool SecretBox::isGuessed()
{
	return guessed;
}


void SecretBox::Close()
{
	opened = false;
}


void SecretBox::Open()
{
	opened = true;
}

void SecretBox::setGuess()
{
	guessed = true;
}


void SecretBox::Lock()
{
	locked = true;
}


void SecretBox::UnLock()
{
	locked = false;
}


bool SecretBox::isLocked()
{
	return locked;
}


void SecretBox::Update()
{
	if (isOpened()) 
	{
		image = mainImage;
	} else
	{
		image = secretImage;
	}
}


void SecretBox::Draw()
{
	if (!isGuessed())
	{
		Sprite::Draw();
	}
}



void SecretBox::onPress(CIwSVec2* coordinates) 
{
}
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------SecretBoxArea
SecretBoxArea::SecretBoxArea()
{
	first = NULL;
	second = NULL;
	locked = false;
}


void SecretBoxArea::Lock()
{
	locked = true;
}


void SecretBoxArea::UnLock()
{
	locked = false;
}


bool SecretBoxArea::IsLocked()
{
	return locked;
}


int32 SecretBoxArea::Alarm(void *systemData, void *userData)
{
	SecretBoxArea* secretBoxArea = (SecretBoxArea*)userData;
	SecretBox* first = secretBoxArea->first;
	SecretBox* second = secretBoxArea->second;
	if (first->type == second->type)
	{
		first->setGuess();
		second->setGuess();
	}
	first->Close();
	second->Close();
	secretBoxArea->first = NULL;
	secretBoxArea->second = NULL;
	secretBoxArea->UnLock();
	s3eTimerCancelTimer(NULL, NULL);
	return 0;
}


void SecretBoxArea::AnimatedClose()
{
	s3eTimerSetTimer(500, &SecretBoxArea::Alarm, this);
}


void SecretBoxArea::Draw()
{
	for(uint32 i = 0; i < secretboxes.size(); i++)
		secretboxes[i]->Draw();
}


void SecretBoxArea::Update()
{
	for(uint32 i = 0; i < secretboxes.size(); i++)
		secretboxes[i]->Update();
}


void SecretBoxArea::onPress(CIwSVec2* coordinates)
{
	if (locked)
	{
		return;
	}
	SecretBox* secretBox = getSecretBoxAt(coordinates);
	if (secretBox != NULL)
	{
		if (secretBox == first || secretBox->isGuessed() || secretBox->isLocked())
			return;
		if (first == NULL)
		{
			first = secretBox;
			first->Open();
		} else
		{
			second = secretBox;
			second->Open();
			//if (first->type == second->type)
			//{
			//	first->setGuess();
			//	second->setGuess();
			//}
			Lock();
			AnimatedClose();
			//first->Close();
			//second->Close();
			//first = NULL;
			//second = NULL;
		}
	}
}


SecretBox* SecretBoxArea::getSecretBoxAt(CIwSVec2* coordinates)
{
	for(int i=0; i < secretboxes.size(); ++i)
	{
		uint32 boxX = secretboxes[i]->position->x;
		uint32 boxY = secretboxes[i]->position->y;
		uint32 boxDx = secretboxes[i]->position->x + secretboxes[i]->size->x;
		uint32 boxDy = secretboxes[i]->position->y + secretboxes[i]->size->y;

		if (coordinates->x >= boxX && coordinates->x <= boxDx && coordinates->y >= boxY && coordinates->y <= boxDy)
			return secretboxes[i];
    }
	return NULL;
}


void SecretBoxArea::Init(GameCondition gameCondition)
{
	secretboxes.clear();
	boxSize = getBoxSize(gameCondition.resolution, 8, 12);

	bool xy[8][16];
	for(int i = 0; i < 8; i++)
		for(int j = 0; j < 12; j++)
			xy[i][j] = false;

	while(secretboxes.size() < 8 * 12) {
		BoxType randomBoxType = (BoxType)IwRandMinMax(1, 4);
		for(int i = 0; i < 2; i++) {
			int32 x, y;
			do {
				x = IwRandMinMax(0, 8);
				y = IwRandMinMax(0, 12);
			} while (xy[x][y]);
			xy[x][y] = true;

			SecretBox *s = new SecretBox(randomBoxType);
			s->position = new CIwSVec2(y * boxSize->x + PADDING * (y + 1), x * boxSize->y + PADDING * (x + 1));
			s->size = boxSize;
			secretboxes.push_back(s);
		}
	}
}


CIwSVec2* SecretBoxArea::getBoxSize(CIwSVec2* resolution, uint32 boxRowCount, uint32 boxColCount)
{
	uint32 width = (resolution->x) / boxColCount - PADDING - PADDING / boxColCount;
	uint32 height = (resolution->y) / boxRowCount - PADDING - PADDING / boxRowCount;
	return new CIwSVec2(width, height);
}


SecretBoxArea::~SecretBoxArea()
{
	secretboxes.clear();
}
//-----------------------------------------------------------------------------------------------------

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


void Game::Initialize()
{
	IMAGE_CACHE.push_back(Iw2DCreateImage("question.png"));
	IMAGE_CACHE.push_back(Iw2DCreateImage("one.png"));
	IMAGE_CACHE.push_back(Iw2DCreateImage("moon.png"));
	IMAGE_CACHE.push_back(Iw2DCreateImage("begin.png"));
}


void Game::onPress(CIwSVec2* coordinates)
{
	secretBoxArea.onPress(coordinates);
}