class Mapa{
  PImage[] mySprite;
  LeerArchivo sprite2;
  int sizeSprite;
  ArrayList<Imagen> partesMapa;
  //constructor inicializa los atributos
  Mapa(String name, String title, int size){
    sizeSprite = size;
    sprite2 = new LeerArchivo(8, 6, title);
    mySprite = sprite2.getHoja();
    partesMapa = new ArrayList<Imagen>();
    dibujarMapa(name);
  }
  
  void dibujar(){
    for(Imagen img: partesMapa)
      img.dibujar();
  }
  //lee el archivo csv y crea una lista con los limites
  void dibujarMapa(String archivo){
    String [] lineas = loadStrings(archivo);
    for(int row = 0; row < lineas.length; row++){
      String[] valores = split(lineas[row],";");
      for(int col = 0; col < valores.length; col++){
        int num = obtenerNum(valores[col]);
        boolean pared = obtenerPared(valores[col]);
        Imagen img = new Imagen(mySprite[num], pared, num);
        img.center.x = sizeSprite/2 + col*sizeSprite;
        img.center.y = sizeSprite/2 + row*sizeSprite;
        partesMapa.add(img);
      }
    }
  }
  
  int obtenerNum(String txt){
    int num = 0;
    num = Integer.valueOf(txt);
    return num;
  }
  
  boolean obtenerPared(String txt){
    boolean pared = true;
    if(Integer.valueOf(txt)>39){
      pared = false;
    }
    return pared;
  }
}
