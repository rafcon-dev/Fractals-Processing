void setup()
{
  size(800, 800);
  background(51);
  stroke(222);
  fill(111);
}

void draw()
{
  noFill();
   // fill(222);
  translate(333,333);
  spiralLine( 400, -PI/1.5, 0.3, 0.7);

}


void spiralLine(float len, float angle, float sizeMul, float distMul)
{
  if(len < 1.0)
    return;
    
    float distFromCentroid = sqrt(len*len - (len/2*(len/2)))   /3;
  triangle(-len/2, -distFromCentroid, len/2, -distFromCentroid, 0, distFromCentroid*2);
 // equiTriangle(len);
  
  pushMatrix();
  translate (0, distFromCentroid*2 * distMul);

  pushMatrix();
  spiralLine(len * sizeMul, angle, sizeMul, distMul);

  popMatrix();
  
  pushMatrix();
    rotate(PI);
    spiralLine(len * sizeMul, angle, sizeMul, distMul);
    popMatrix();
  
  popMatrix();
  
   rotate ( 2*PI/3);
   pushMatrix();
  translate (0, distFromCentroid*2 * distMul);

  pushMatrix();
  spiralLine(len * sizeMul, angle, sizeMul, distMul);
  popMatrix();
    pushMatrix();
    rotate(PI);
    spiralLine(len * sizeMul, angle, sizeMul, distMul);
    popMatrix();
  popMatrix();



  
   rotate ( 2*PI/3);
   pushMatrix();
  translate (0, distFromCentroid*2 * distMul);

  pushMatrix();
  spiralLine(len *sizeMul, angle, sizeMul, distMul);
  popMatrix();
    pushMatrix();
    rotate(PI);
    spiralLine(len * sizeMul, angle, sizeMul, distMul);
    popMatrix();
  popMatrix();
  
rotate(PI);

 triangle(-len/2, -distFromCentroid, len/2, -distFromCentroid, 0, distFromCentroid*2);
 // equiTriangle(len);
  
  pushMatrix();
  translate (0, distFromCentroid*2 * distMul);

  pushMatrix();
  spiralLine(len * sizeMul, angle, sizeMul, distMul);

  popMatrix();
  
  pushMatrix();
    rotate(PI);
    spiralLine(len * sizeMul, angle, sizeMul, distMul);
    popMatrix();
  
  popMatrix();
  
   rotate ( 2*PI/3);
   pushMatrix();
  translate (0, distFromCentroid*2 * distMul);

  pushMatrix();
  spiralLine(len * sizeMul, angle, sizeMul, distMul);
  popMatrix();
    pushMatrix();
    rotate(PI);
    spiralLine(len * sizeMul, angle, sizeMul, distMul);
    popMatrix();
  popMatrix();



  
   rotate ( 2*PI/3);
   pushMatrix();
  translate (0, distFromCentroid*2 * distMul);

  pushMatrix();
  spiralLine(len *sizeMul, angle, sizeMul, distMul);
  popMatrix();
    pushMatrix();
    rotate(PI);
    spiralLine(len * sizeMul, angle, sizeMul, distMul);
    popMatrix();
  popMatrix();
}