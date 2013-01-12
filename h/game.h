class Game
{
public:
    Game();
    ~Game();
    void Update();
    void Render();

private:
    CIwFVec2 m_Position;
    CIwSVec2 m_Size;
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


class Sprite : DrawableGameElement, UpdatableGameElement
{
public:
	Sprite(char *src)
	{
		image = Iw2DCreateImage(src);
	}
private:
	CIw2DImage *image;
}