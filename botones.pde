class boton {
  String texto;
  int x,y;
  boton(String _texto, int _x, int _y){
    texto=_texto;
    x=_x;
    y=_y;
  }
  void crear() {
    fill(255,0,0);
    rect(x,y,200,70);
    textAlign(CENTER);
    textSize(45);
    fill(255);
    text(texto,x+95,y+50);

  }
  void presionar(){
    if (mousePressed && (mouseButton == LEFT)){
      if(mouseX > 300 && mouseX < 500 && mouseY > 180 && mouseY < 250){
        botones = 1;
        redraw();
      }
      else if(mouseX > 300 && mouseX < 500 && mouseY > 270 && mouseY < 340){
        botones = 2;
        redraw();
      }
      else if(mouseX > 300 && mouseX < 500 && mouseY > 360 && mouseY < 430){
        exit();
        redraw();
      }
      else if(mouseX > 600 && mouseX < 800 && mouseY > 10 && mouseY < 80){
        botones = 0;
        redraw();
      }
    }
  }
}
  
