int up = 0, down = 0, left = 0, right = 0, mouse = 0;
int x = 0, y = 0;
int temp, count;
int randomx,randomy;

void juego(){
  
  escenario.capaSup(floppa,bingus,proyectiles);
  botones[3] = new Boton(botonR,790,40);
  //se comprueba las vidas para que siga el juego
  if(nvidas>=1){
    recibirDanio(bingus);
    hacerDanio(proyectiles,bingus);
    floppa.dibujar();
    floppa.mover();
    
    floppa.setCambioX(right - left);
    floppa.setCambioY(down - up);
    if(nvidas>=1){
      image(vidas.getImg(nvidas-1),80,30);
    }
    
    //tiempo
    text(tiempo,400,40);
    tiempoz += 1;
    if(tiempoz%60 == 0){
      tiempo += 1;
    }
    //creacion de los bingus
    if(tiempoz % 120 == 0){
      randomx = int(random(0,832));
      bingus.add(new Bingus(randomx,100));
    }
    if(tiempoz % 240 == 0){
      randomy = int(random(0,672));
      bingus.add(new Bingus(100,randomy));
    }
    if(tiempoz % 480 == 0){
      randomx = int(random(0,832));
      bingus.add(new Bingus(randomx,672));
    }
    if(tiempoz % 320 == 0){
      randomy = int(random(0,672));
      bingus.add(new Bingus(832,randomy));
    }
    //dibujar los bingus creados con movimiento
    for(Bingus b : bingus){
      b.dibujar();
    }
    //para disparar
    if(mouse == 1){
      if(tiempoz - temp >= 30){
        floppa.disparar();
        temp = tiempoz;
      }
    }
    //dibujar los proyectiles
    for (Proyectil p: proyectiles){
      p.dibujar();
    }
    
  }
  else{
    puntaje();
  }
  
  
}
//verifica si dos imagenes se tocan
boolean tocado(Imagen p, Imagen i){
  boolean tocarX = p.getRight() <= i.getLeft() || p.getLeft() >= i.getRight();
  boolean tocarY = p.getBottom() <= i.getTop() || p.getTop() >= i.getBottom();
  if(tocarX || tocarY){
    return false;
  } else {
    if(i.getPared()){
      return true;
    } else {
      return false;
    }
  }
}
//verifica si una imagen toca algun elemento de alguna lista
ArrayList<Imagen> tocandoLista(Imagen p, ArrayList<Imagen> lista){
  ArrayList<Imagen> listaTocada = new ArrayList<Imagen>();
  for(Imagen i: lista){
    if(tocado(p,i)){
      listaTocada.add(i);
    }
  }
  return listaTocada;
}
//se encarga de las colisiones de una imagen con las paredes
void resolverColision(Imagen p, ArrayList<Imagen> pared){
  ArrayList<Imagen> colLista = tocandoLista(p, pared);
  if(colLista.size() > 0){
    Imagen colision = colLista.get(0);
    if(p.cambio.y > 0){
      p.setBottom(colision.getTop());
    } else if(p.cambio.y < 0){
      p.setTop(colision.getBottom());
    }
    p.cambio.y = 0;
  }
  p.center.x += p.cambio.x;
  colLista = tocandoLista(p, pared);
  if(colLista.size() > 0){
    Imagen colision = colLista.get(0);
    if(p.cambio.x > 0){
      p.setRight(colision.getLeft());
    } else if(p.cambio.x < 0){
      p.setLeft(colision.getRight());
    }
    p.cambio.x = 0;
  }
}
//los bingus hacen daño al floppa
void recibirDanio(ArrayList<Bingus> enemigos){
  for(Bingus b: enemigos){
    if(floppa.tocar(b)){
      b.setDead();
      if(nvidas >= 1){
        nvidas -= 1;
      }
    }
  }
}
//los proyectiles hacen daño a los bingus
void hacerDanio(ArrayList<Proyectil> proyectiles, ArrayList<Bingus> enemigos){
  for(Proyectil p: proyectiles){ 
    for(Bingus b: enemigos){
      if(p.tocar(b)){
        b.setDead();
        p.setUsed();
        puntajematar +=2;
      }
    }
  }
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

void mousePressed() {
  mouse = 1;
}

void mouseReleased() {
  mouse = 0;
}
