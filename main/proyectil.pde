class Proyectil extends Imagen {
  PVector origen, direccion;
  float dist, vel = 6;
  boolean used;
  //constructor admite el origen y la direccion del proyectil
  Proyectil(float x1, float y1, int x2, int y2){
    super(proyectil,x1,y1);
    used = false;
    origen = new PVector(x1,y1);
    direccion = new PVector(x2,y2);
    float dx = x2 - x1;
    float dy = y2 - y1;
    dist = sqrt(dx*dx + dy*dy);
  }
  
  void dibujar() {
    if(!used){
      image(img,center.x,center.y);
      mover();
    } else {
      center.x = -150;
      center.y= -150;
    }
  }
  //metodo para dar movimiento al proyectil sin importar la distancia
  void mover() {
    center.x += vel*(direccion.x-origen.x)/dist;
    center.y += vel*(direccion.y-origen.y)/dist;
  }
  
  void setUsed() {
    used = true;
  }
}
