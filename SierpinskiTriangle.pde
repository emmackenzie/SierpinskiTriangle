public void setup()
{
 	size(700,700);
}
public void draw()
{
	sierpinski(50,650, 600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	
	if(len <=20)
	{
		triangle(x, y, x + (len/2), y - len, x +len, y );
	}
	else
	{
		sierpinski(x, y, len/2);
		len--;
	}
}