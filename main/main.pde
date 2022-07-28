PImage floppa;
PImage arco;
PImage fondo;

float arc = 0.0;
float up = 0.0;
float down = 0.0;
float left = 0.0;
float right = 0.0;

float x = 400;
float y = 300;

boton boton1;
boton boton2;
boton boton3;
boton boton4;

int botones = 0;

void setup(){
  size(800,600);
  imageMode(CENTER);
  frameRate(30);
  
  floppa = loadImage("data/floppa.png");
  arco = loadImage("data/arco.png");
  fondo = loadImage("data/fondo.png");
  
  boton1 = new boton("Jugar",300,180);
  boton2 = new boton("Tutorial",300,270);
  boton3 = new boton("Salir",300,360);
  boton4 = new boton("Regresar",600,10);
  
}
void draw(){

  if( botones == 0){
    menu();
  }
  else if( botones == 1){
    juego();
  }
  else if( botones == 2){
    tutorial();
  }
}

void menu(){
  boton1.crear();
  boton2.crear();
  boton3.crear();
  boton1.presionar();
}

void tutorial(){
  
  background(0);
  boton4.crear();
  boton1.presionar();
  textAlign(LEFT);
  text("Tutorial",20,60);
  
}
