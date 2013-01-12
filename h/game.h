class Game
{
public:
    Game();
    ~Game();
    void Update();
    void Render();

private:
    CIwSVec2 *size;
};


class DrawableGameElement
{
protected:
	virtual void onDraw() = 0;
}


class UpdatableGameElement
{
protected:
	virtual void onUpdate() = 0;
}


class Sprite : public DrawableGameElement, UpdatableGameElement
{
public:
	Sprite(char *src);
protected:
	void onDraw();
	void onUpdate();
private:
	CIw2DImage *image;
	CIwSVec2 *position;
	CIwSVec2 *size;
}


class AnimatedSprite : DrawableGameElement, UpdatableGameElement
{
public:
	AnimatedSprite();
protected:
	CIwArray<Sprite> *sprites;
}