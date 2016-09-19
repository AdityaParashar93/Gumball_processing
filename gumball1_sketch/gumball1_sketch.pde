int count=5;
int id=0;
int value1=0;
int value2=255;
int value3=0;
int value4=255;

void setup() 
{
  size(800, 800) ;
  background(255) ;
  smooth() ;
  strokeWeight(3);
  strokeCap(ROUND);  
  // load font
  PFont font;
  font = loadFont("BookAntiqua-48.vlw");
  textFont(font, 32);
  // Only draw once
  noLoop();
}

void draw() 
{
  PFont font1;
  font1 = loadFont("BookAntiqua-48.vlw");
  textFont(font1, 32);
  fill(0);  
  text("The Gumball Machine", 250, 60);
  PImage image = loadImage("gumball.jpg");
  image(image, (width-image.width)/2, (height-image.height)/2);  
  stroke(value1);
  fill(value2);
  rect(50,500,150,50);
  PFont font;
  font = loadFont("BookAntiqua-48.vlw");
  textFont(font, 16);
  fill(value1);
  text("Insert Quarter!", 70, 530);
  stroke(value3);
  fill(value4);
  rect(600,500,150,50);
  textFont(font, 16);
  fill(value3);
  text("Turn the crank!", 620, 530);
  changeRectColor(mouseX,mouseY);
  loop();
  //runTest() ;
}

public void changeRectColor(int x,int y)
{
    if((x>50&&x<200)&&(y>500&&y<550))
    {
      value1=255;
      value2=209;
    }
    else
    {
      value1=209;
      value2=255;
    }
    if((x>600&&x<750)&&(y>500&&y<550))
    {
      value3=255;
      value4=209;
    }
    else
    {
      value3=209;
      value4=255;
    }
}

void mouseClicked()
{
    //GumballMachine gumballMachine = new GumballMachine(5);
    //System.out.println(gumballMachine);
    if((mouseX>50&&mouseX<200)&&(mouseY>500&&mouseY<550))
    {
      //gumballMachine.insertQuarter();  
      System.out.println("Turn the crank to dispence gumball");
      value2=0;
    }
    else if((mouseX>600&&mouseX<750)&&(mouseY>500&&mouseY<550))
    {
          value4=0;
          //gumballMachine.turnCrank();         
          if(count>0)
         {
            System.out.println("Dispencing the gumball");
            System.out.println("Here is your gumball");
            count--;
         }
         else
         {
           System.out.println("Oops We are out of gumball");
         }
    }
    else
    { 
      System.out.println("Please click on the 'Insert Quarter' to insert the coin or click on the 'Turn Crank' to dispence gumball.");
    }
}

public void runTest() 
{
  GumballMachine gumballMachine = new GumballMachine(5);
  System.out.println(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  System.out.println(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  System.out.println(gumballMachine);
}