  PVector currPos = new PVector (0.0, 0.0);
  double zoomLevel = 1.0;
  
  int maxIterations = 255;
  double  maxSize = 0.0;
  void setup()
{
  size(1024, 1024);
  background(51);
  stroke(222);
  noFill();
}

void draw()
{
   //maxSize = maxSize + 0.01;
   maxSize = 2.0;
  drawMandelBrot(maxSize);
}

double pixelToCoordX(int pixel, PVector currPos, double zoomLevel)
{
  double i = (pixel + currPos.x) * 4.0 / width;
  return (i - 2.0) / zoomLevel;
}

double pixelToCoordY(int pixel, PVector currPos, double zoomLevel)
{
    double i = (pixel + currPos.y) * 4.0 / height;
    
  return ((i - 2.0)* -1.0 ) / zoomLevel;
}

Complex mandelBrotFunc (Complex z, Complex c, int timesPotenciated)
{
  for(int i = 0; i < timesPotenciated; i++)
    z = z.multi(z);
  return z.addi(c);
}

void drawMandelBrot(double maxSize)
{

  
  for( int i = 0; i < width; i++) {
    for(int j = 0; j < height; j++) {
      
       Complex currComplex = new Complex(
       pixelToCoordX(i, currPos, zoomLevel), 
       pixelToCoordY(j, currPos, zoomLevel));
       
       Complex z = new Complex (0.0, 0.0);

       int k;
       for (k = 0; k < maxIterations; k++)
       {
         z = mandelBrotFunc (z , currComplex, 1);
         
         if (z.complexSize() > maxSize) break;
       }
         set(i, j, color(map(k, 0, maxIterations, 0, 255)));
      }
     
}
}