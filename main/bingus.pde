//clase que representa a los enemigos
class Bingus extends Imagen {
  float vel = 1, velr = 1;
  boolean dead = false;
  //constructor
  Bingus(int _x, int _y){
    super(1, _x, _y);
  }
  void dibujar(){
    if (!dead){
      super.dibujar();
      mover(floppa);
    }
    else{
      center.x = 15000;
      center.y= 15000;
    }
  }
  //se mueve a las coordenadas del floppa
  void mover(Floppa f){
    if( center.x < f.center.x && center.y < f.center.y){
      cambio.x = vel;
      cambio.y = vel;
    }
    if( center.x > f.center.x && center.y > f.center.y){
      cambio.x = -vel;
      cambio.y = -vel;
    }
    if( center.x < f.center.x && center.y > f.center.y){
      cambio.x = +vel;
      cambio.y = -vel;
    }
    if( center.x > f.center.x && center.y < f.center.y){
      cambio.x = -vel;
      cambio.y = +vel;
    }
    if( center.x < f.center.x ){
      cambio.x = 1.3*vel;
    }
    if( center.x > f.center.x ){
      cambio.x = -1.3*vel;
    }
    if(center.y > f.center.y){
      cambio.y = -1.3*vel;
    }
    if(center.y < f.center.y){
      cambio.y = 1.3*vel;
    }
    
    center.x += cambio.x;
    center.y += cambio.y;
  }
  
  void setDead(){
    dead = true;
  }
  //Es para diferencia un bingus de otra imagen
  boolean getEnemy(){
    return true;
  }
}
