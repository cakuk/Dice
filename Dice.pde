int num= (int)(Math.random()* 6) + 1;
void setup()
{
  noLoop();
  size(500, 300);
}
void draw()
{
  background(0);
  int i = 0;
  for(int y1 = 75; y1 < 270; y1 = y1 + 75) {
    for(int x1 = 65; x1 < 500; x1 = x1 + 75) {
      Die a = new Die(x1, y1, num);
      a.show();
      a.roll();
      i = i + 1;
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  
  Die(int x, int y, int num) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    stroke(0);
    if(num < 1) { // change & check coords?
      ellipse(myX, myY, 10, 10);
    } else if(num > 1 && num < 2) {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if(num > 2 && num < 3) {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX, myY, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if (num > 3 && num < 4) {
      ellipse(myX - 5, myY - 5, 10, 10);
      ellipse(myX - 5, myY + 5, 10, 10);
      ellipse(myX + 5, myY - 5, 10, 10);
      ellipse(myX + 5, myY + 5, 10, 10);
    } else if (num > 4 && num < 5) {
      ellipse(myX, myY, 10, 10);
      ellipse(myX - 5, myY - 5, 10, 10);
      ellipse(myX - 5, myY + 5, 10, 10);
      ellipse(myX + 5, myY - 5, 10, 10);
      ellipse(myX + 5, myY + 5, 10, 10);
    } else {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX - 10, myY, 10, 10);
      ellipse(myX + 10, myY, 10, 10);
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);

    }
  }
  void show()
  {
    stroke(255);
    fill(255);
    rectMode(CENTER);
    rect(myX, myY, 50, 50, 10);
  }
}






