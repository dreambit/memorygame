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


/**
This is an abstract class that represents all drawable elements of the game, such as Sprite class, etc.
**/
class IGameElement
{
public:
	virtual void Draw() = 0;
	virtual void Update() = 0;
	virtual void Init(GameCondition gameCondition){};
};


class Sprite : public IGameElement
{
public:
	Sprite(char *src);
	~Sprite();
	virtual void Draw();
	virtual void Update();
	CIw2DImage *image;
	CIwSVec2 *position;
	CIwSVec2 *size;
};


/*class AnimatedSprite : IGameElement
{
public:
	AnimatedSprite();
	~AnimatedSprite();
protected:
	CIwArray<Sprite> *sprites;
};*/


class SecretBox : public Sprite
{
public:
	SecretBox();
	~SecretBox();
};


class SecretBoxArea : public IGameElement
{
public:
	SecretBoxArea();
	~SecretBoxArea();
	void Draw();
	void Update();
	void Init(GameCondition gameCondition);
private:
	CIwArray<SecretBox*> secretboxes;
	uint32 boxescount;
	CIwSVec2* boxSize;
	CIwSVec2* getBoxSize(CIwSVec2* resolution, uint32 boxCount);
};




class Game
{
public:
    Game();
    ~Game();
    void Update();
    void Render();
	void NewGame();
private:
	GameCondition gameCondition;
	SecretBoxArea secretBoxArea;
	Sprite* backGround;
};
