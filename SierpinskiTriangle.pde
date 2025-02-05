public void setup()
{
  size(600,600);
}
public void draw()
{
  sierpinski(0,500,500);
}
public void mousePressed()//optional
{
  fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
}
public void sierpinski(int x, int y, int len)
{
  if(len <= 100){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
 
  }
}
