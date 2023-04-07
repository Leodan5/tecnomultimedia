//Lizarraga Perez Leodan 
// legajo:95539/2

void setup(){
  size(800,400);
  size(800,600);
  PImage fondo;
  fondo=loadImage("imagen.jpg");
  image(fondo,0,0);
 
}

void draw(){
  fill(232,150,150,68);
  ellipse(400,300,350,450);
  fill(0,0,255);
  rectMode(CORNERS);
  rect(250,220,340,250);
  rect(460,220,550,250);
  
}
