void juego(){
  
  background(fondo);
  boton4.crear();
  boton4.presionar();
  
  arc = atan2((mouseY-y),(mouseX-x));

  x += (right - left) * 5;
  y += (down-up) * 5;
  
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
