PImage floppa;
PImage arco;
float arc = 0.0;
float up = 0.0;
float down = 0.0;
float left = 0.0;
float right = 0.0;
float x = 0.0;
float y = 0.0;

void setup(){
  size(800,600);
  imageMode(CENTER);
  frameRate(30);
  floppa = loadImage("data/floppa.png");
  arco = loadImage("data/arco.png");
}

void draw(){
  background(0);
  arc = atan2((mouseY-height/2),(mouseX-width/2));
  x += (right - left) * 10;
  y += (down-up) * 10;
  pushMatrix();
  translate(x,y);
  beginShape();
  image(floppa,0,0);
  rotate(arc);
  image(arco,0,0);
  endShape();
  popMatrix();
}
void keyPressed(){
  if(key=='a'){
    left = 1;
  }
  else if(key=='d'){
    right = 1;
  }
  else if(key=='w'){
    up = 1;
  }
  else if(key=='s'){
    down= 1;
  }
}
void keyReleased(){
  if(key=='a'){
    left = 0;
  }
  else if(key=='d'){
    right = 0;
  }
  else if(key=='w'){
    up = 0;
  }
  else if(key=='s'){
    down= 0;
  }
}
