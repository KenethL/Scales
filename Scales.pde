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
  fill(50+random(-50,50),180+random(-60,60),250+random(-40,5));
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+random(18,22),y+random(18,22));
  curveVertex(x+random(18,22),y+random(48,52));
  curveVertex(x,y+40);
  curveVertex(x-random(18,22),y+random(48,52));
  curveVertex(x-random(18,22),y+random(18,22));
  curveVertex(x,y);
  curveVertex(x,y);
  endShape();
  fill(255);
  noStroke();
  beginShape();
  curveVertex(x,y+5);
  curveVertex(x,y+5);
  curveVertex(x+random(10,15),y+random(15,20));
  curveVertex(x+random(10,15),y+random(40,45));
  curveVertex(x,y+35);
  curveVertex(x-random(10,15),y+random(40,45));
  curveVertex(x-random(10,15),y+random(15,20));
  curveVertex(x, y+5);
  curveVertex(x, y+5);
  endShape();
  stroke(0);
}
