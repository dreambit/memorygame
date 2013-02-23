//-----------------------------------------------------------------------------------------------------GameCondition
/**
This class represents game condition at a time, sush as game points, etc.
*/
class GameCondition
{
public:
	GameCondition();
	GameCondition(uint32 complexity);
	uint32 complexity;
	uint32 timeleft;
	uint32 points;
	CIwSVec2 *resolution;
};
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------IGameElement
/**
This is an abstract class that represents all drawable elements of the game, such as Sprite class, etc.
**/
class IGameElement
{
public:
	//Calls when an element should be drawn
	virtual void Draw() = 0;
	//Calls when an element should be updated
	virtual void Update() = 0;
	//
	virtual void Init(GameCondition gameCondition){};
	//
	virtual void onPress(CIwSVec2* coordinates){};
};
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------Sprite
class Sprite : public IGameElement
{
public:
	Sprite(char *src);
	Sprite();
	~Sprite();
	virtual void Draw();
	virtual void Update();
	CIw2DImage *image;
	CIwSVec2 *position;
	CIwSVec2 *size;
};
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------AnimatedSprite
/*class AnimatedSprite : IGameElement
{
public:
	AnimatedSprite();
	~AnimatedSprite();
	void Draw();
	void Update();
	void animateFirst();
	void animateSecond();
protected:
	static CIw2DImage *firstImage;
	Sprite *secondImage;
	CIwSVec2 *position;
	CIwSVec2 *size;
};*/

//-----------------------------------------------------------------------------------------------------SecretBox
enum BoxType
{
	BOXTYPE_QUESTION = 0,
	BOXTYPE_ONE,
	BOXTYPE_MOON,
	BOXTYPE_BEGIN
};
class SecretBox : public Sprite
{
public:
	SecretBox(BoxType boxType);
	~SecretBox();
	void Update();
	void Draw();
	void onPress(CIwSVec2* coordinates);
	bool isOpened();
	bool isGuessed();
	void setGuess();
	void Close();
	void Open();
	void Lock();
	void UnLock();
	bool isLocked();
	CIw2DImage *mainImage;
	CIw2DImage *secretImage;
	BoxType type;
private:
	bool opened, guessed, locked;
	
};
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------SecretBoxArea
class SecretBoxArea : public IGameElement
{
public:
	static const uint32 PADDING_LEFT = 135;
	static const uint32 PADDING_TOP = 50;
	static const uint32 PADDING_RIGHT = 260;
	static const uint32 PADDING_BOTTOM = 100;
	static const uint32 PADDING = 10;
	SecretBoxArea();
	~SecretBoxArea();
	void Draw();
	void Update();
	void onPress(CIwSVec2* coordinates);
	void Init(GameCondition gameCondition);
	void AnimatedClose();
	static int32 Alarm(void *systemData, void *userData);
	SecretBox* first;
	SecretBox* second;
	void Lock();
	void UnLock();
	bool IsLocked();
private:
	CIwArray<SecretBox*> secretboxes;
	uint32 boxescount;
	CIwSVec2* boxSize;
	CIwSVec2* getBoxSize(CIwSVec2* resolution, uint32 boxRowCount, uint32 boxColCount);
	SecretBox* getSecretBoxAt(CIwSVec2* coordinates);
	bool locked;
};
//-----------------------------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------------------------Game
class Game
{
public:
    Game();
    ~Game();
    void Update();
    void Render();
	void onPress(CIwSVec2* coordinates);
	int32 ButtonEventCallback(s3ePointerEvent* apButtonEvent, void* apUserData);
	void Initialize();
	void NewGame();
	GameCondition gameCondition;
	SecretBoxArea secretBoxArea;
	Sprite* backGround;
};
//-----------------------------------------------------------------------------------------------------