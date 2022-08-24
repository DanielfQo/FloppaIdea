class Boton{
  String txt;
  int x, y,w,h;
  //constructor1
  Boton(String _txt, int _x, int _y){
    txt =_txt;
    x = _x;
    y = _y;
    w = 200;
    h = 70;
  }
  //constructor2 para imagen de regreso
  Boton(PImage i, int _x, int _y){
    image(i,_x,_y,80,80);
    x = _x;
    y = _y;
    w = 80;
    h = 80;
    if (mousePressed && (mouseButton == LEFT)){
      if(mouseX > x-40 && mouseX < x+40 && mouseY > y-40 && mouseY < y+40){
         vboton = 0;
      }
    }
  }
  void crear(){
    fill(120);
    rect(x,y,w,h);
    textAlign(CENTER);
    textSize(45);
    fill(255);
    text(txt,x+100,y+50);
    presionar();
  }
  void presionar(){
    if (mousePressed && (mouseButton == LEFT)){
      if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
        if( txt == "Jugar"){
          vboton = 1;
        }
        else if ( txt == "Tutorial"){
          vboton = 2;
        }
        else if( txt == "Salir"){
          exit();
        }
      }
    }
  }
}
