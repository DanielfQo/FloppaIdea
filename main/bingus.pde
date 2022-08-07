class bingus{
  String tipo;
  float bx;
  float by;
  float velocidad = 1;
  float velocidadr = 1;
  int barea;
  int bradio;
  
  bingus(String _tipo,int _bx, int _by){
    tipo = _tipo;
    bx = _bx;
    by = _by;
    bradio = 15;
    
  }
  void crear(){
    //ellipse(bx,by,bradio,bradio);
    image(bingus,bx,by);
  }
  void mover(){
    if( bx < x && by < y){
      bx = bx+velocidad;
      by = by+velocidad;
    }
    if( bx > x && by > y){
      bx = bx-velocidad;
      by = by-velocidad;
    }
    if( bx < x && by > y){
      bx = bx+velocidad;
      by = by-velocidad;
    }
    if( bx > x && by < y){
      bx = bx-velocidad;
      by = by+velocidad;
    }
    if( bx < x ){
      bx = bx+velocidad*3;
    }
    if( bx > x ){
      bx = bx-velocidad*3;
    }
    if(by > y){
      by = by-velocidad*3;
    }
    if(by < y){
      by = by+velocidad*3;
    }
  }
  void rebotar(bingus otro){
    if( bx < otro.bx && by < otro.by){
      bx = bx-velocidadr;
      by = by-velocidadr;
    }
    if( bx > otro.bx && by > otro.by){
      bx = bx+velocidadr;
      by = by+velocidadr;
    }
    if( bx < otro.bx && by > otro.by){
      bx = bx-velocidadr;
      by = by+velocidadr;
    }
    if( bx > otro.bx && by < otro.by){
      bx = bx+velocidadr;
      by = by-velocidadr;
    }
    if( bx < otro.bx ){
      bx = bx-velocidadr;
    }
    if( bx > otro.bx ){
      bx = bx+velocidadr;
    }
    if(by > otro.by){
      by = by+velocidadr;
    }
    if(by < otro.by){
      by = by-velocidadr;
    }
    
  }
  boolean colisionFloppa(){
    float sumaRadios = bradio + floppa1.fradio;
    float dist = dist(bx,by,x,y);
    if(dist > sumaRadios){
      return false;
    }
    else{
      return true;
    }
  }
  boolean colisionBingus(bingus otro){
    float sumaRadios = bradio + otro.bradio;
    float dist = dist(bx,by,otro.bx,otro.by);
    if(dist > sumaRadios){
      return false;
    }
    else{
      return true;
    }
  }
  
}
