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
  
  arc = atan2((mouseY-y),(mouseX-x));
  pushMatrix();
  translate(x,y);
  beginShape();
  floppa1.crear();
  x += (right - left) * 4;
  y += (down - up) * 4;
  //println(x,y);
  rotate(arc);
  image(arco,0,0);
  endShape();
  popMatrix();
  
  bingus1.crear();
  bingus2.crear();
  
  //bingus3.crear();
  
  if(bingus1.colisionFloppa()!= true){
    if(bingus1.colisionBingus(bingus2)!= true){
      bingus1.mover();
    }
    else bingus1.rebotar(bingus2);
  }

  if(bingus2.colisionFloppa()!= true){
    if(bingus2.colisionBingus(bingus1)!= true){
      bingus2.mover();
    }
    else bingus2.rebotar(bingus1);
  }
  
  

  /*if(bingus3.colisionFloppa()!= true){
    bingus3.mover();
  }
*/
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
