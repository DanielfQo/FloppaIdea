class Floppa extends Imagen {
  int vel = 2;
  Imagen arco = new Imagen(2,416,336);
  //constructor
  Floppa(){
    super(0,416,336);
  }
  
  void dibujar(){
    super.dibujar();
    println("x: "+center.x+" y: "+center.y);
    float arc = atan2((mouseY-center.y),(mouseX-center.x));
    push();
    translate(center.x,center.y);
    rotate(arc);
    image(arco.img,0,0);
    pop();
  }
  
  void disparar(){
    proyectiles.add(new Proyectil(center.x, center.y, mouseX, mouseY));
  }

  //metodos para el movimiento
  void setCambioX(int x){
    cambio.x = vel * x;
  }
  void setCambioY(int y){
    cambio.y = vel * y;
  }
  void mover(){
    center.x += cambio.x;
    center.y += cambio.y;
  }
  
}
