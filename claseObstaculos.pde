class Bolitas {
  PImage fuego;
  int x, y;
  int velY;

  Bolitas(int posx, int posy) {
    fuego = loadImage("fuego1.png");
    x = posx;
    y = posy;
    velY = 10;
  }

  void Dibujar() {
    image(fuego, x, y);
  }

  void Mueve() {
    if (y<0) {
      velY=10;
    }
    if (y>530) {
      velY=-10;
    }
    y=y+velY;
  }
}
