PImage proyectil,botonR,fondo1,fondo2; 

Escenario escenario;
Floppa floppa;
Vidas vidas;

int puntaje,puntajematar;

ArrayList<Bingus> bingus;
ArrayList<Proyectil> proyectiles;

Boton[] botones = new Boton[4];

int vboton = 0;
int nvidas = 8,tiempo,tiempoz;


void setup(){
  size(832,672);
  imageMode(CENTER);
  proyectil = loadImage("data/proyectil.png");
  botonR = loadImage("data/botonRetroceder.png");
  fondo1 = loadImage("data/fondo1.png");
  fondo2 = loadImage("data/fondo2.png");
  botones[0] = new Boton("Jugar",300,180);
  botones[1] = new Boton("Tutorial",300,270);
  botones[2] = new Boton("Salir",300,360);
  
  
}

void draw(){
  //vboton Sirve para cambiar de pantalla
  if( vboton == 0){
    menu();
  }
  else if( vboton == 1){
    juego();    
  }
  else if( vboton == 2){
    tutorial();
  }
}
