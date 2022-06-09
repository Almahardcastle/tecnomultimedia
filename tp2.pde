//LINK DEL VIDEO: https://youtu.be/fBN6i7h4CHI
//Alma Hardcastle, tecnomultimedia1, comision 1, legajo 91305/6
//Profesor: Jose Luis Bugiolachi
//Al pasar el mouse por distintas partes de la pantalla, cambian las lineas del fondo.
//Presionando la tecla "r" los circulos se agrandan.
//Presionando el boton con el signo "!" los circulos vuelven a su estado original. 



int tam=1;
int tam2=500;
int tamchico=60;
int tamgrande=100;


void setup (){

size(500,500);

}



void draw(){
background(0);

if(keyPressed){
if(key == 'r'){
tamchico = tamchico + tam*2;
tamgrande = tamgrande + tam*2;
}
}

for(int rec=0 ; rec<=width ;rec+=10){
float color1=map(mouseX, 0, width, 0 , 255);
float color2=map(mouseY, 0, height, 0, 255);
stroke(random(color1), random( color2),  random(color2));
strokeWeight(2);
line(rec, 0, rec, tam2);
}
 
for(int cir=0; cir<width/2 ; cir+=11){
stroke(0);
if(cir % 2 == 0){
fill(0);
}
    
if(cir % 2 != 0){
fill(255);
}
ellipse(cir+200, cir, tamchico, tamchico);
ellipse(cir+250, 400-cir, tamchico, tamchico);
ellipse(cir+50, 250-cir, tamchico , tamchico);    
ellipse(cir+50, 200+cir, tamchico, tamchico);
ellipse(cir, 250+cir, tamgrande, tamgrande);
ellipse(cir, 200-cir, tamgrande , tamgrande);
}
for(int cir=0; cir<width ; cir+=11){
if(cir % 2 == 0){
fill(0);
}
if(cir % 2 != 0){
fill(255);
}
ellipse(cir+250, cir-50, tamgrande, tamgrande);
ellipse(cir+50,700-cir , tamgrande, tamgrande);
}

rect(15, 440, 100, 50);
fill(255, 0 , 0);
textSize(40);
text("!", 60, 475); 
}

void mouseClicked(){
if(mouseX>15 && mouseX <100 && mouseY>440 && mouseY<490)
tamgrande=100;
tamchico=60;
}
