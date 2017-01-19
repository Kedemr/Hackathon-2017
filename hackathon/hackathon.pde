/*
A simulation where a kid has a kite at the beginning but it flies away so he has to go to the spool and get
another kite so that he can fly kites again.
*/
PImage kid;
PImage cloud;
PImage sun;
PImage kite;
PImage spool;
PVector posKite;
void setup()
{
  fullScreen();
  posKite = new PVector(width/2-10, height-390);
  kid = loadImage("kid.png");
  kid.resize(250, 250);
  cloud = loadImage("cloud.png");
  sun = loadImage("sun.png");
  sun.resize(400, 400);
  kite = loadImage("kite.png");
  kite.resize(100, 300);
  spool = loadImage("spools.gif");
}

void draw()
{
  noStroke();
  fill(#28BC29);
  ellipse(width, height/2, 1000, 1000);
  triangle(width/4, height, width/1.2, 0, width/1.2, height);
  image(sun, -50, -60);
  image(cloud, 0, 0);
  image(cloud, 300, 0);
  image(cloud, 600, 0);
  image(kid, width/2, height-250);
  image(kite, posKite);
  image(spool, width-200, height-100);
  if(keyPressed)
  {
    
  }
}