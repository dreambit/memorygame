class IGameElement
{
public:
	virtual void Draw() = 0;
	virtual void Update() = 0;
	virtual void Restart(){};
};


class GameCondition
{
public:
	GameCondition();
	GameCondition(char complexity);
	~GameCondition();
private:
	char complexity;
	uint32 timeleft;
	uint32 points;
};


class Sprite : public IGameElement
{
public:
	Sprite(char *src);
	~Sprite();
protected:
	void Draw();
	void Update();
private:
	CIw2DImage *image;
	CIwSVec2 *position;
	CIwSVec2 *size;
};


class AnimatedSprite : IGameElement
{
public:
	AnimatedSprite();
	~AnimatedSprite();
protected:
	CIwArray<Sprite> *sprites;
};


class SecretBox : public AnimatedSprite
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
	CIwSVec2 getBoxSize();
	void Clear();
	void GenerateBoxes();
	void Draw();
	void Update();
	void Restart();
private:
	CIwArray<SecretBox> *secretboxes;
	uint32 boxescount;
};


class Game
{
public:
    Game();
    ~Game();
    void Update();
    void Render();
	void NewGame();
	void AddGameElement(IGameElement *element);
private:
    CIwSVec2 *size;
	GameCondition *gameCondition;
	CIwArray<IGameElement> *gameElements;
};
