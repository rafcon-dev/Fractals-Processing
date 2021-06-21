void setup()
{
  size(1024, 1024);
  background(51);
  stroke(100);
  noFill();
}

void draw()
{
  translate(10,10);
  squareFractal( 700);
}

void squareFractal(float len)
{
  
  if(len * 1/3 < 0.5)
    return;
  
  rect(0, 0, len, len);
  
  for( int i = 0; i < 3; i++) {
    for(int j = 0; j < 3; j++) {
      if ( i == 1 && j == 1) {
         fill(180, 220, 190);
         noStroke();
         rect(0, 0, len * 1/3, len * 1/3);
         stroke(100);
         noFill();
      }
      else {
        pushMatrix();
        
        squareFractal(len * 1/3);
        popMatrix();
      }
      translate (len * 1/3, 0);
    }
  translate (-len, len* 1/3);
  }
}
