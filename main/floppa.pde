class floppa{
  int fx;
  int fy;
  int vel = 3;
  int fradio;
  
  floppa(int _fx, int _fy){
    fx = _fx;
    fy = _fy;
    fradio = 20;
  }
  void crear(){
    //ellipse(fx,fy,fradio,fradio);
    image(floppa,fx,fy);
  }
}
