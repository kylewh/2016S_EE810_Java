/*
 *@author:Wenhao Liao @CWID:10406242
 *img url = http://planetpixelemporium.com/download/download.php?earthmap1k.jpg
 *img2 url = http://planetpixelemporium.com/download/download.php?moonmap1k.jpg
*/

PShape earth, moon;
void setup() {
  size(1280,760, OPENGL);
  noStroke();
  PImage img = loadImage("earth.jpg");
  PImage img2 = loadImage("moon.jpg");
  earth = createShape(SPHERE, 144);
  moon = createShape(SPHERE, 40);
  earth.setTexture(img);
  moon.setTexture(img2);
}

float ang = 0;
float moonOrbit = 0;
float moonRotation = 0;
void  draw() {
  background(0);
  translate(width/2,height/2,-400);
  
  pushMatrix();
  rotateZ(23.5 * PI/180);
  rotateY(ang);
  shape(earth);
  popMatrix();
  

  pushMatrix();
  rotateY(moonOrbit);
  translate(616,0);
  rotateZ(5.14 * PI/180);
  rotateY(moonRotation);
  shape(moon);
  popMatrix();
  ang += .01;
  moonOrbit -= .0034;
  moonRotation -= 0.0034;
}