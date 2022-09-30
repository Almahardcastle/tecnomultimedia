class Principal{
Fondo paisajes; 
Gato cat;

Principal(){
paisajes = new Fondo(0, 0);
cat = new Gato();

}

void display(){
  paisajes.mostrar();
  paisajes.keyPressed();
  cat.muestra();
  cat.caminata();
  cat.vuelve();



}

}
