class boton {
  String texto;
  int x,y;
  boton(String _texto, int _x, int _y){
    texto =_texto;
    x = _x;
    y = _y;
  }
  void crear(){
    fill(255,0,0);
    rect(x+95,y+35,100,35);
    textAlign(CENTER);
    textSize(45);
    fill(255);
    text(texto,x+95,y+50);
  }
  void presionar(){
    if (mousePressed && (mouseButton == LEFT)){
      if(mouseX > x && mouseX < x+200 && mouseY > y && mouseY < y+70){
        if( texto == "Jugar"){
          botones = 1;
        }
        else if ( texto == "Tutorial"){
          botones = 2;
        }
        else if( texto == "Salir"){
          exit();
        }
        else if( texto == "Regresar"){
          botones = 0;
        }
      }
    }
  }
}
