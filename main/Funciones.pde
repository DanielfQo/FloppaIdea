//Funcion encargada de mostrar la pantalla principal y reiniciar algunas variables del juego
void menu(){
  image(fondo1,416,336,832,672);
  botones[0].crear();
  botones[1].crear();
  botones[2].crear();
  floppa = new Floppa();
  escenario = new Escenario();
  vidas = new Vidas();
  bingus = new ArrayList<Bingus>();
  proyectiles = new ArrayList<Proyectil>();
  nvidas = 8;
  tiempo = 0;
  tiempoz = 0;
  temp = 0;
  puntaje=0;
  puntajematar=0;
}
// Pantalla tutorial
void tutorial(){
  image(fondo1,416,336,832,672);
  botones[3] = new Boton(botonR,790,40);
  fill(0);
  textAlign(LEFT);
  text("Tutorial",20,60);
  text("-Usa las teclas WASD para moverte ",20,140);
  text("por el mapa.",20,200);
  text("-Los enemigos vendran de todos los ",20,260);
  text("lados posible.",20,320);
  text("-Usa el mouse para disparar.  ",20,380);
  text("-A medida que el tiempo corre el",20,440);
  text("juego se hace mas dificil.",20,500);
}
//Funcion que nos muestra el puntaje cuando termina el juego
void puntaje(){
  image(fondo2,416,336,832,672);
  puntaje = puntajematar + tiempo;
  botones[3] = new Boton(botonR,790,40);
  text("Tu puntaje es:",400,300);
  text(puntaje,400,350);
}
