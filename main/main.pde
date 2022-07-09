PImage floppa;
PImage arco;
float arc = 0.0;
int x = 0;
int y = 0;

void setup(){
  size(800,600);
  imageMode(CENTER);
  frameRate(30);
  floppa = loadImage("data/floppa.png");
  arco = loadImage("data/arco.png");
}

void draw(){
  background(0);
  pushMatrix();
  arc = atan2((mouseY-height/2),(mouseX-width/2));
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
    x -= 30;
  }
  else if(key=='d'){
    x += 30;
  }
  else if(key=='w'){
    y -= 30;
  }
  else if(key=='s'){
    y += 30;
  }
}
