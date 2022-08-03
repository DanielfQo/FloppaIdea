
class bingus{
  String tipo;
  int bx;
  int by;
  int velocidad = 1;
  int barea;
  Boolean a;
  
  bingus(String _tipo,int _bx, int _by){
    tipo = _tipo;
    bx = _bx;
    by = _by;
    
  }
  void crear(){
    rect(bx,by,14,17);
    image(bingus,bx,by);
  }
  void mover(){
    if( bx < x && by < y){
      bx = bx+velocidad;
      by = by+velocidad;
    }
    else if( bx > x && by > y){
      bx = bx-velocidad;
      by = by-velocidad;
    }
    else if( bx < x && by > y){
      bx = bx+velocidad;
      by = by-velocidad;
    }
    else if( bx > x && by < y){
      bx = bx-velocidad;
      by = by+velocidad;
    }
    else if( bx < x ){
      bx = bx+velocidad;
    }
    else if( bx > x ){
      bx = bx-velocidad;
    }
    else if(by > y){
      by = by-velocidad;
    }
    else if(by < y){
      by = by+velocidad;
    }
  }
  
}
