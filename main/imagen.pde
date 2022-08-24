class Imagen {
  PImage[] imgs;
  LeerArchivo sprite1;
  PImage img;
  PVector center, cambio, tamanio;
  boolean pared;
  int numero, pos = 0;
  //constructor para personajes y el arma
  Imagen (int _pos, float x, float y){
    pos = _pos;
    sprite1 = new LeerArchivo(3,1,"personajes.png");
    imgs = sprite1.getHoja();
    img = imgs[_pos];
    tamanio = new PVector(img.width, img.height);
    center = new PVector(x,y);
    cambio = new PVector(0,0);
    pared = false;
    numero = 0;
  }
  //constructor
  Imagen (PImage archivo, float x, float y) {
    img = archivo;
    tamanio = new PVector(img.width, img.height);
    center = new PVector(x,y);
    cambio = new PVector(0,0);
    pared = false;
    numero = 0;
  }
  //constructor para obstaculos
  Imagen (PImage archivo, boolean choca, int num) {
    img = archivo;
    tamanio = new PVector(img.width, img.height);
    center = new PVector(0,0);
    cambio = new PVector(0,0);
    pared = choca;
    numero = num;
  }
  //retorna un booleano si una imagen choca con un bingus
  boolean tocar (Bingus i) {
    boolean tocarX = getRight() <= i.getLeft() || getLeft() >= i.getRight();
    boolean tocarY = getBottom() <= i.getTop() || getTop() >= i.getBottom();
    if(tocarX || tocarY){
      return false;
    } else {
      if(i.getEnemy()){
        return true;
      } else {
        return false;
      }
    }
  }
  
  //establecen los limites de la imagen
  void setLeft(int left){
    center.x = left + tamanio.x/2;
  }
  int getLeft(){
    return round(center.x - tamanio.x/2);
    
  }
  void setRight(int right){
    center.x = right - tamanio.x/2;
  }
  int getRight(){
    return round(center.x + tamanio.x/2);
  }
  
  
  void setTop(int top){
    center.y = top + tamanio.y/2;
  }
  int getTop(){
    return round(center.y - tamanio.y/2);
  }
  void setBottom(int bottom){
    center.y = bottom - tamanio.y/2;
  }
  int getBottom(){
    return round(center.y + tamanio.y/2);
  }
  
  boolean getPared(){
    return pared;
  }
  
  int getNumero(){
    return numero;
  }
  
  void dibujar(){
    image(img, center.x, center.y);
  }
  
  
}
