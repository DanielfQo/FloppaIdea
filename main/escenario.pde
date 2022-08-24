class Escenario {
  Mapa mapa0,mapa1,mapa2,mapa3;
  int mapa;
  //constructor
  Escenario() {
    mapa = 0;
    mapa0 = new Mapa("data/mapa0.csv","data/mapa.png",32);
    mapa1 = new Mapa("data/mapa1.csv","data/mapa.png",32);
    mapa2 = new Mapa("data/mapa2.csv","data/mapa.png",32);
    mapa3 = new Mapa("data/mapa3.csv","data/mapa.png",32);
  }
  //metodo que cambia el mapa
  void capaSup(Floppa floppa, ArrayList<Bingus> bingus, ArrayList<Proyectil> proyectiles) {
    
    if (mapa == 0){
      resolverColision(floppa,mapa0.partesMapa);
      for(Bingus b: bingus){
        resolverColision(b,mapa0.partesMapa);
      } 
      mapa0.dibujar();
      if(floppa.center.x >=820){
        mapa = 1;//cambiar de mapa
        floppa.center.x = 0;//reubica los objetos
        for(Bingus b: bingus){
          b.center.x -= 832;
        }
        for(Proyectil b: proyectiles){
          b.center.x -= 832;
        }
      }
      if(floppa.center.y >=650){
        mapa = 2;
        floppa.center.y = 0;
        for(Bingus b: bingus){
          b.center.y -= 832;
        }
        for(Proyectil b: proyectiles){
          b.center.y -= 832;
        }
      }
    } else if (mapa == 1) {
      resolverColision(floppa,mapa1.partesMapa);
      for(Bingus b: bingus){
        resolverColision(b,mapa1.partesMapa);
      }
      mapa1.dibujar();
      if(floppa.center.x <=0){
        mapa = 0;
        floppa.center.x = 820;
        for(Bingus b: bingus){
          b.center.x += 832;
        }
        for(Proyectil b: proyectiles){
          b.center.x += 832;
        }
      }
      if(floppa.center.y >=650){
        mapa = 3;
        floppa.center.y = 0;
        for(Bingus b: bingus){
          b.center.y -= 832;
        }
        for(Proyectil b: proyectiles){
          b.center.y -= 832;
        }
      }
    } else if (mapa == 2) {
      resolverColision(floppa,mapa2.partesMapa);
      for(Bingus b: bingus){
        resolverColision(b,mapa2.partesMapa);
      }
      mapa2.dibujar();
      if(floppa.center.x >=820){
        mapa = 3;
        floppa.center.x = 0;
        for(Bingus b: bingus){
          b.center.x -= 832;
        }
        for(Proyectil b: proyectiles){
          b.center.x -= 832;
        }
      }
      if(floppa.center.y <=0){
        mapa = 0;
        floppa.center.y = 650;
        for(Bingus b: bingus){
          b.center.y += 832;
        }
        for(Proyectil b: proyectiles){
          b.center.y += 832;
        }
      }
    } else if (mapa == 3) {
      resolverColision(floppa,mapa3.partesMapa);
      for(Bingus b: bingus){
        resolverColision(b,mapa3.partesMapa);
      }
      mapa3.dibujar();
      if(floppa.center.x <=0){
        mapa = 2;
        floppa.center.x = 820;
        for(Bingus b: bingus){
          b.center.x += 832;
        }
        for(Proyectil b: proyectiles){
          b.center.x += 832;
        }
      }
      if(floppa.center.y <=0){
        mapa = 1;
        floppa.center.y = 650;
        for(Bingus b: bingus){
          b.center.y += 832;
        }
        for(Proyectil b: proyectiles){
          b.center.y += 832;
        }
      }
    }
  }
}
