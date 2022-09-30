class Gato {
  PImage [] gatito;
  int posx, posy;
  int camina;
  boolean cam;
  
  Gato(){
  gatito = new PImage [2];
  for (int i=0; i<2; i++) {
      gatito[i] = loadImage("gatito"+i+".png");
    }
    
    posx = 600;
    posy = 450;
    cam = false;
  }
  
 
  
  void muestra(){
    if(cam){
    if (frameCount%20==0) {
        camina ++;
        camina = camina%2;
    }
      
    image(gatito[camina], posx, posy);
    }
  }
  
  void caminata(){
    posx -=2;
    cam=true;
  
  }
  
  void vuelve(){
    if(posx < -150){
      posx = 600;
    
    }
    
  
  }
  
}
