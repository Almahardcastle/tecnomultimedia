class Vida {
  PImage corazon;
  int x, y;

  Vida(int vx, int vy) {
    corazon = loadImage("vida.png");
    corazon.resize(40, 45);
    x = vx;
    y = vy;
  }

  void dibu() {
    image(corazon, x, y);
  }
}
