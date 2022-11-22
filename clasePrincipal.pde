class Principal {
  int cantidad = 3;
  int estado;
  Bolitas [] fuegos = new Bolitas [6];
  Vida [] life = new Vida [cantidad];
  Personaje p;
  Fondos f; 
  Casa c;

  Principal () {
    for (int i=0; i<fuegos.length; i++) {
      fuegos [i] = new Bolitas(50+i*100, 0);
    }
    for (int i=0; i<cantidad; i++) {
      life [i] = new Vida(490+i*50, 0);
    }
    p = new Personaje ();
    f = new Fondos ();
    c = new Casa();
  }

  void display() {
    estados();
  }

  void jugando() {
    f.paisajeprincipal();
    p.dibujar();
    c.meta();
    for (int i=0; i<fuegos.length; i++) {
      fuegos [i].Mueve();
      fuegos[i].Dibujar();
    }
    Sechocan();
    funcionando();
  }

  void funcionando() {
    for (int i=0; i<cantidad; i++) {
      life [i].dibu();
    }
  }

  void Sechocan() {
    for (int i=0; i<fuegos.length; i++) {
      float distancia = dist(p.poscx, p.poscy, fuegos[i].x, fuegos[i].y);
      if (distancia<30) {
        cantidad = cantidad - 1;
        p.poscx = 630;
        p.poscy = 0;
      }
    }
  }

  void moverConejo(int tecla) {
    if (p.poscy<520) {
      if (tecla == DOWN ) {
        p.poscy += 3;
      }
    }
    if (p.poscy>0) {
      if (tecla == UP) {
        p.poscy -=3;
      }
    }
    if (p.poscx>0) {
      if (tecla == LEFT) {
        p.poscx -=3;
      }
    }

    if (p.poscx<630) {
      if (tecla == RIGHT) {
        p.poscx +=3;
      }
    }
  }

  void estados() {
    if (estado == 0) {
      f.inicioMostrar();
    }
    if (estado == 1) {
      f.instrucciones();
    }
    if (estado == 2) {
      jugando();
    }
    if (estado == 3) {
      f.ganaste();
    }
    if (estado == 4) {
      f.perdiste();
    }
    if (estado == 5) {
      f.Final();
    }
  }

  void cambiarEstado (int tecla) {
    if (estado==0) {
      if (tecla == 'C' || tecla == 'c') {
        estado = 1;
      }
    }
    if (estado==1) {
      if (tecla == ' ') {
        estado = 2;
      }
    }
    if (estado==2) {
      float distancia2 = dist(p.poscx, p.poscy, c.cx, c.cy);
      if (distancia2<50) {
        estado = 3;
      }
    }
    if (estado==3 || estado == 4) {
      cantidad = 3;
      p.poscx = 630;
      p.poscy = 0;
      if (tecla == 'R' || tecla == 'r') {
        estado = 2;
      }
      if (tecla == 'F' || tecla == 'f') {
        estado = 5;
      }
    }
    if (estado == 5) {
      if (tecla == 'V' || tecla == 'v') {
        estado = 0;
      }
    }
  }

  void perder() {
    if (cantidad == 0 ) {
      estado = 4;
    }
  }
}
