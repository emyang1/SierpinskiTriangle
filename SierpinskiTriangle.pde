public void settings() {
    size(500, 500);
}

public void setup(){
    //empty!
}
int val = 500;
int leg = 20;
public void draw(){
  background(0);
  noFill();
  sierpinski(0, 490, val);
}
public void mouseClicked(){ //optional
 leg = (int)(Math.random()*10)+20;
}
public void mouseDragged(){
  val = val + 2;
  if(val>=1000)
    val = 500;
  System.out.println(val);
}
public void sierpinski(int x, int y, int len) {
  if(len<=20){
    triangle(x, y, x+len/2, y-len, x+len, y);
  }else{
    stroke(141, 123, 232);
    sierpinski(x, y, len/2); //left corner
    stroke(255, 107, 110);
    sierpinski(x+len/2, y, len/2); //right corner
    stroke(88, 171, 173);
    sierpinski(x+len/4, y-len/2, len/2); //top corner
  }
}
