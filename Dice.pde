void setup()
{
  size(400, 450);  
  noLoop();
}
void draw()
{
  background(192);
  int numTotal = 0;
  for (int x = 5; x < 350; x = x + 55)
  {
    for (int y = 5; y < 350; y = y + 55)
    {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      if (bob.dots == 1)
      {
        numTotal = numTotal + 1;
      }
       if (bob.dots == 2)
      {
        numTotal = numTotal + 2;
      }
       if (bob.dots == 3)
      {
        numTotal = numTotal + 3;
      }
       if (bob.dots == 4)
      {
        numTotal = numTotal + 4;
      }
       if (bob.dots == 5)
      {
        numTotal = numTotal + 5;
      }
       if (bob.dots == 6)
      {
        numTotal = numTotal + 6;
      }
      
    }
  }
  System.out.println(numTotal);
  text("There are a total of " +  numTotal  + "  dots ", 125, 400);
  }
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int dots;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    dots = 1;
    myX = x;
    myY = y;
  }
  void roll()
  {
   dots = (int)(Math.random()*5)+1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50);
    fill(0);
    if ( dots == 1)
      ellipse(myX+25, myY+25, 15, 15);
    else if (dots == 2)
    {
      ellipse(myX+10, myY+10, 15, 15);
      ellipse(myX+40, myY+40, 15, 15);
    }
    else if (dots == 3)
    {
      ellipse(myX+10, myY+10, 15, 15);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+40, myY+40, 15, 15);
    }
    else if (dots == 4)
    {
      ellipse(myX+10, myY+10, 15, 15);
      ellipse(myX+40, myY+10, 15, 15);
      ellipse(myX+40, myY+40, 15, 15);
      ellipse(myX+10, myY+40, 15, 15);
    }
    else if (dots == 5)
    {
      ellipse(myX+10, myY+10, 15, 15);
      ellipse(myX+40, myY+10, 15, 15);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+40, myY+40, 15, 15);
      ellipse(myX+10, myY+40, 15, 15);
    }
    else if (dots == 6)
    {
      ellipse(myX+10, myY+10, 15, 15);
      ellipse(myX+40, myY+10, 15, 15);
      ellipse(myX+10, myY+25, 15, 15);
      ellipse(myX+40, myY+25, 15, 15);
      ellipse(myX+40, myY+40, 15, 15);
      ellipse(myX+10, myY+40, 15, 15);;
    }
  }
}
