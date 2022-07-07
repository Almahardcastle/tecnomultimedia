//Alma Victoria Hardcastle. Legajo: 91305/6. Tecnologia multimedial 1. Comision 1.
//Profesor: Jose Luis Bugiolachi.
//https://youtu.be/AgiZkFaErIA


PImage[] pantallas = new PImage [3];
int posXyo, posYyo, posX, posY, velY, tam, tamrec;


void setup(){
  size(700,500);
  posXyo=585;
 posYyo=110;
  posX=150;
  velY=1;
  posY=110;
  

  
pantallas[0]  = loadImage("inicio.png");
pantallas[1] = loadImage("inicio2.png");
pantallas[2] = loadImage("ganaste.png");


}

void draw(){

 jugando(30, 20);
 
 
 if(frameCount>0 && frameCount<400){
 image(pantallas[0], 0, 0);
 }
 if(frameCount > 400 && frameCount < 900){
   image(pantallas[1],0,0);
 }
 }

 
   
