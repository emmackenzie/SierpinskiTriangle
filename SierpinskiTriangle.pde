public int tsize;
public void setup()
{
 	size(700,700);
 	tsize = 1;
}
public void draw()
{
	background(255);
	sierpinski(50,650, 600, tsize);
	
}
public void mouseClicked()//optional
{
	if(mouseButton == LEFT)
	{
		tsize = tsize+1;
			if(tsize > 10)
				tsize=1;
	}
	if (mouseButton == RIGHT)
	{
		tsize = tsize-1;
		if(tsize<1)
			tsize = 10;
	}

	//if(tsize == 1)

}
public void sierpinski(int x, int y, int len, int size) 
{
	
	if(size < 2)
	{
		triangle(x, y, x + (len/2), y - len, x +len, y );
	}
	else
	{
		fill(0);
		sierpinski(x, y, len/2, size-1);
		sierpinski(x + len/2, y , len/2, size-1);
		sierpinski(x + len/4, y - len/2, len/2, size-1);
	}
}