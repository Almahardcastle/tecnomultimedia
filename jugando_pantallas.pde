 void jugando(int tamrec, int  tam){
   
if(frameCount>=900){
background(255,201,228);
texturaDelfondo(50);
fill(0);
rect(posXyo, posYyo, tamrec, tamrec);

for(int e=0; e<400; e+=70){
fill(0);
rect(e+posX, posY, tam ,tam);
if(dist(e+posX , posY, posXyo, posYyo)<=20){
posYyo=110;
posXyo=585;
}
  
if(posY<100){
velY=1;
}
if(posY>370){
velY=-1;
}
posY=posY+velY;
}

if(keyPressed){
if(key == CODED) {
if(posYyo>100){
if (keyCode == UP) {
posYyo=posYyo-2;
}
}
if(posYyo<364){
if (keyCode == DOWN) {
posYyo=posYyo+2;
}
}
}
}

if(posXyo>87){
if(keyCode == LEFT){
posXyo=posXyo-2;
}
}
}

if(posXyo < 134){
image(pantallas[2],0,0);
if(mousePressed){
posXyo=585;
posYyo=110;
frameCount=0;
}
}
}
 
 void texturaDelfondo(int tam){
  for(int i=0; i<500; i+=49){
    for(int b=0; b<250; b+=49){
      if((i+b) % 2 == 0){
        fill(220, 250, 246);
      }else{fill(255);
      }
      noStroke();
       rect(i+85, b+100, tam, tam);
    }
  }
 
  }
 
  
  
  
  
 
  
  
  
 
  
  


  
