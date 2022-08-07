PImage floppa;
PImage arco;
PImage fondo;
PImage bingus;

boton boton1;
boton boton2;
boton boton3;
boton boton4;

floppa floppa1;

bingus bingus1;
bingus bingus2;
bingus bingus3;

int botones = 0;

void setup(){
  size(800,600);
  imageMode(CENTER);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  frameRate(30);
  
  floppa = loadImage("data/floppa.png");
  arco = loadImage("data/arco.png");
  fondo = loadImage("data/fondo.png");
  bingus = loadImage("data/bingus.png");
  
  boton1 = new boton("Jugar",300,180);
  boton2 = new boton("Tutorial",300,270);
  boton3 = new boton("Salir",300,360);
  boton4 = new boton("Regresar",600,10);
  
  floppa1 = new floppa(0,0);
  
  bingus1 = new bingus("Normal",400,0);
  bingus2 = new bingus("Normal",800,300);
  bingus3 = new bingus("Normal",0,300);
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
  background(0);
  boton1.crear();
  boton1.presionar();
  boton2.crear();
  boton2.presionar();
  boton3.crear();
  boton3.presionar();
}

void tutorial(){
  
  background(0);
  boton4.crear();
  boton4.presionar();
  textAlign(LEFT);
  text("Tutorial",20,60);
  
}
