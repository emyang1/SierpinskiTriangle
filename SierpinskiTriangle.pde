public void settings() {
    size(400, 400);
}

public void setup(){
    //empty!
}
int val = 394;
float col = 207;
float col2 = 255;
int leg = 20;
public void draw(){
  background(200);
  sierpinski(0, 390, val);
  stroke(col, col2, 230);
}
public void mouseClicked(){ //optional
 leg = (int)(Math.random()*5)+20;
}
public void mouseDragged(){
  val = val + 2;
  if(val>=804)
    val = 400;
  if(col>=255)
     col = col - 2;
  if(col<=200)
     col = col + 2;
}
public void sierpinski(int x, int y, int len) {
  if(len<=leg){
    triangle(x, y, x+len/2, y-len, x+len, y);
  }else{
    sierpinski(x, y, len/2); //left corner
    sierpinski(x+len/2, y, len/2); //right corner
    sierpinski(x+len/4, y-len/2, len/2); //top corner
  }
}


