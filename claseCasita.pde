class Casa {
  PImage casita;
  int cx;
  int cy;

  Casa () {
    cx = 10;
    cy = 500;
    casita = loadImage("casita.png");
    casita.resize(60, 80);
  }

  void meta() {
    image(casita, cx, cy);
  }
}
