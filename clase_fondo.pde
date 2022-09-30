class Fondo {
  PImage [] paisaje;
  int posx, posy;
  
  Fondo(int posx, int posy){
  paisaje = new PImage [4];
  for (int i=0; i<4; i++) {
      paisaje[i] = loadImage("fondo"+i+".png");
    }
    
  }
  
  void mostrar(){
    image(paisaje[2], posx, posy);
    
  }
  
  void keyPressed(){
      if(keyCode == UP){
        image(paisaje[0], posx, posy);
      }
         if(keyCode == DOWN){
        image(paisaje[1], posx, posy);
         }
         if(keyCode == LEFT){
        image(paisaje[2], posx, posy); 
         }
        if(keyCode == RIGHT){
        image(paisaje[3], posx, posy);
      }
    
    
  
  }
}
