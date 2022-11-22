class Personaje {
  PImage conejo;
  int poscx, poscy;

  Personaje () {
    poscx = 630;
    poscy = 0;
    conejo = loadImage("cone.png");
    conejo.resize(60, 80);
  }

  void dibujar() {
    image(conejo, poscx, poscy);
  }
}
