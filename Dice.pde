int total = 0;
void setup()
{
  noLoop();
  size(400, 300);
}
void draw()
{
  background(0);
  for(int y1 = 65; y1 < 270; y1 = y1 + 85) {
    for(int x1 = 65; x1 < 370; x1 = x1 + 85) {
      Die a = new Die(x1, y1);
      a.show((int)(Math.random() * 6) + 1);
      total = total + a.sum;
      //System.out.println(total + " total");
    }
  }
  fill(255);
  textSize(15);
  textAlign(CENTER);
  text("Total sum: " + total, 200, 290);
}
void mousePressed()
{
  total = 0;
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, sum;
  
  Die(int x, int y)
  {
    myX = x;
    myY = y; 
  }
  void show(int n)
  {
    noStroke();
    fill(255);
    rectMode(CENTER);
    rect(myX, myY, 60, 60, 10);
    stroke(0);
    if(n == 1) { 
      ellipse(myX, myY, 10, 10);
    } else if(n == 2) {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if(n == 3) {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX, myY, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if (n == 4) {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if (n == 5) {
      ellipse(myX, myY, 10, 10);
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else {
      ellipse(myX - 10, myY - 10, 10, 10);
      ellipse(myX + 10, myY - 10, 10, 10);
      ellipse(myX - 10, myY, 10, 10);
      ellipse(myX + 10, myY, 10, 10);
      ellipse(myX - 10, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    }
    sum = n;
  }
}






