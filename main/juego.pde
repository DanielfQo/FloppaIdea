float arc = 0.0;

float up = 0.0;
float down = 0.0;
float left = 0.0;
float right = 0.0;

float x = 400;
float y = 300;


void juego(){
  
  background(fondo);
  boton4.crear();
  boton4.presionar();
  
  bingus1.crear();
  bingus1.mover();
  
  bingus2.crear();
  bingus2.mover();
  
  bingus3.crear();
  bingus3.mover();
  
  arc = atan2((mouseY-y),(mouseX-x));

  pushMatrix();
  translate(x,y);
  beginShape();
  floppa1.crear();
  x += (right - left) * 3;
  y += (down - up) * 3;
  //println(x,y);
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
