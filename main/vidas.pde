class Vidas{
  LeerArchivo sprite;
  PImage[] imgs;
  //constructor
  Vidas(){
    sprite = new LeerArchivo(1,8,"vidas.png");
    imgs = sprite.getHoja();
  }
  //obtiene el sprite 
  PImage getImg(int v)  {
    return imgs[v];
  }
}
