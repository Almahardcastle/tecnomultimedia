//Tecno multimedia 1, comisión 1.
//Alumna: Hardcastle, Alma Victoria.
//Legajo: 91305/6.
//Docente: Jose Luis Bugiolachi.
//LINK AL VIDEO: https://youtu.be/QaK1-e4lPQg

import processing.sound.*;
SoundFile fondo;
Principal pr;

void setup() {
  fondo = new SoundFile(this, "sonido.wav");
  fondo.loop();
  size(700, 600);
  pr = new Principal ();
}

void draw() {
  pr.display();
  if (keyPressed && pr.estado==2) {
    pr.moverConejo(keyCode);
  }
  pr.perder();
}

void keyPressed() {
  pr.cambiarEstado(keyCode);
}
