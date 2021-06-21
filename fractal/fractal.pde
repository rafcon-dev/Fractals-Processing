void setup()
{
  size(512, 512);
background(51);
stroke(222);

}
float aa = 0.01;
void draw()
{
  clear();
  frameRate(60);
  doIt(256, 256, 100, 1 , 7, aa, 0.7, 3 );
  println(frameRate);
  aa = aa+0.01;
}

 public int doIt(float initXPos, float initYPos, float initLineLenght, float initAngle,  int iterations, float angleOffset, float lengthMultiplier, int nOfBranches)
{
  int col = 5;
float len = initLineLenght;
float angle = initAngle;


float previousXPos;
float previousYPos;

float xPos = initXPos; //<>//
float yPos = initYPos;

FloatList listX = new FloatList();
listX.append(xPos);
FloatList listY = new FloatList();
listY.append(yPos);
FloatList angles = new FloatList();
angles.append(angle);

float newAngleOffset = angleOffset/(nOfBranches-1);

for( int i = 0; i < iterations; i++)
{
  float[] xRootPoints = listX.array();
  float[] yRootPoints = listY.array();
  float[] angleRootPoints = angles.array();
  
  listX.clear();
  listY.clear();
  angles.clear();

        for(int j = 0; j < xRootPoints.length; j++)
  {
    previousXPos = xRootPoints[j];
    previousYPos = yRootPoints[j];

    angle = angleRootPoints[j]-angleOffset/2;
    for(int k = 0; k < nOfBranches; k++)
    {
      xPos = previousXPos + len*cos(angle);
      yPos = previousYPos + len*sin(angle);
      
      line(previousXPos, previousYPos, xPos, yPos);
          
      listX.append(xPos);
      listY.append(yPos);
      angles.append(angle);
      angle = angle+newAngleOffset;
    }
  }
    len = len*lengthMultiplier;
  }
return 0;
}