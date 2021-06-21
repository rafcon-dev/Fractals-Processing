void setup()
{
  size(1024, 1024);
  background(51);
  stroke(222);
  noFill();

}

float aa = 0.10;
int col = 1;
boolean decreasing = false;
void draw()
{ 
    translate(300,300);
  clear();
  background(51);
  frameRate(60);
  
    if (col > 245)
  decreasing = true;
  if ( col < 6)
  decreasing = false;
  if (!decreasing)
  col = col+5;
  else
  col = col-5;
  
  infiniteSquare(500, aa, col);
  println(frameRate);
  aa = aa+0.01;
  

  
}

void infiniteSquare(float len, float rotation, int col)
{
  if(len * 1/3 < 0.5)
    return;
    stroke(col);
  rotate(rotation);
  fill(51);
  rect (-len/2,-len/2,len,len);
  fill(col);
  ellipse(0,0,len,len);
  noFill();
  
  col = col + 20;
  infiniteSquare(sqrt( len*len/2 ), rotation, col % 255);
}