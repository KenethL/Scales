void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for(int l = -50; l < 500; l = l + 27){
    for(int w = -50; w < 500; w = w + 27){
      if(l%2 == 0){
      scale(w,l);
      }
      else{
      scale(w+17,l);
      }
    }
  }
}
void scale(int x, int y) {
  fill(50+(float)(Math.random()*100-50),180+(float)(Math.random()*120-60),250+(float)Math.random()*45-40);
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+(float)(Math.random()*4+18),y+(float)(Math.random()*4+18));
  curveVertex(x+(float)(Math.random()*4+18),y+(float)(Math.random()*4+48));
  curveVertex(x,y+40);
  curveVertex(x-(float)(Math.random()*4+18),y+(float)(Math.random()*4+48));
  curveVertex(x-(float)(Math.random()*4+18),y+(float)(Math.random()*4+18));
  curveVertex(x,y);
  curveVertex(x,y);
  endShape();
  fill(255);
  noStroke();
  beginShape();
  curveVertex(x,y+5);
  curveVertex(x,y+5);
  curveVertex(x+(float)(Math.random()*5+10),y+(float)(Math.random()*5+15));
  curveVertex(x+(float)(Math.random()*5+10),y+(float)(Math.random()*5+40));
  curveVertex(x,y+35);
  curveVertex(x-(float)(Math.random()*5+10),y+(float)(Math.random()*5+40));
  curveVertex(x-(float)(Math.random()*5+10),y+(float)(Math.random()*5+15));
  curveVertex(x, y+5);
  curveVertex(x, y+5);
  endShape();
  stroke(0);
}
