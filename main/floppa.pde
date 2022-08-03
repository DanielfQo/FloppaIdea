class floppa{
  int fx;
  int fy;
  int vel = 3;
  
  floppa(int _fx, int _fy){
    fx = _fx;
    fy = _fy;
  }
  void crear(){
    rect(fx,fy,17,17);
    image(floppa,fx,fy);
  }
}
