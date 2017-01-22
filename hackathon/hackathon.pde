/*
A simulation where a kid has a kite at the beginning but it flies away so he has to go to the spool and get
 another kite and he gives it to his friend.
 */
import processing.sound.*;
SoundFile song;
PImage kid;
PImage cloud;
PImage sun;
PImage kite;
PImage spool;
PImage bench;
PImage swing;
PImage girl;
int posKiteX;
int posKiteY;
int posKidX;
int posKidY;
int benchX = 0;
int benchY;
int spoolX;
int spoolY;
int posKiteX2;
int posKiteY2;
int girlX;
int girlY;
void setup()
{
  fullScreen();
  posKiteX = width/2-10;
  posKiteY = height-390;
  posKidX = width/2;
  posKidY = height-250;
  spoolX = width-200;
  spoolY = height-100;
  posKiteX2 = posKidX;
  posKiteY2 = posKidY;
  girlX = width/2+200;
  girlY = height-450;
  kid = loadImage("kid.png");
  kid.resize(250, 250);
  cloud = loadImage("cloud.png");
  sun = loadImage("sun.png");
  sun.resize(400, 400);
  kite = loadImage("kite.png");
  kite.resize(100, 300);
  spool = loadImage("spools.gif");
  bench = loadImage("bench.png");
  benchY = height-200;
  swing = loadImage("swing.png");
  girl = loadImage("girl.png");
  girl.resize(100, 200);
  song = new SoundFile(this, "goodbye moonmen.mp3");
  song.play();
}

void draw()
{
  noStroke();
  background(#2790E3);
  fill(#28BC29);
  ellipse(width, height/2, 1000, 1000);
  triangle(width/4, height, width/1.2, 0, width/1.2, height);
  image(swing, width/2+100, height/2-200);
  image(bench, benchX, benchY);
  image(girl, girlX, girlY);
  image(kite, posKiteX, posKiteY);
  image(sun, -50, -60);
  image(cloud, 0, 0);
  image(cloud, 300, 0);
  image(cloud, 600, 0);
  image(kid, posKidX, posKidY);
  image(spool, spoolX, spoolY);
  animation();
}

void animation()
{
  if (dist(benchX, benchY, posKidX, posKidY)< 1000)
  {
    posKiteY = posKiteY - 10;
  }
  if (keyPressed && key == 'd')
  {
    posKidX =  posKidX +10;
  }
  if (keyPressed && key == 'a')
  {
    posKidX = posKidX - 10;
  }
  if (keyPressed && key == 's')
  {
    posKidY =  posKidY +10;
  }
  if (keyPressed && key == 'w')
  {
    posKidY = posKidY - 10;
  }  
  if (dist(spoolX, spoolY, posKidX, posKidY)<200)
  {
    image(kite, girlX-90, girlY-250);
  }
}