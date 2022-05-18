//Alma Hardcastle.Tecno multimedia 1, Comisión 1. Legajo 91305/6
//tp1. Profesor: Jose Luis Bugiolachi
//SE REINICIA PRESIONANDO EL BOTÓN NARANJA EN LA ESQUINA INFERIOR DERECHA DE LA PANTALLA. 

//VARIABLES PRIMER PANTALLA:TÍTULO
PFont fuente1;
PImage fondo1;
PImage logococo;
int sub; 

//VARIABLES SEGUNDA PANTALLA: PERSONAJES
PImage fondo2;
String personajes = "Reparto \n Miguel: Luis Ángel Gómez Jaramillo \n Hector: Gael Garcia Bernal \n Ernesto de la cruz: Marco Antonio Solis \n Mamá Imelda: Angélica Vale \n Abuelita: Angélica María \n Papá: Cesar Costa \n Papá Julio: Alfonso Arau\n Tío Oscar y Tío Felipe: Héctor Borilla \n Mamá Coco: Rocío Garcel \n Mamá: Sofía Espinosa \n Tía Rosita: Cecilia Suárez \n Tía Victoria: Ana de la Reguera   "; 
int sub2;

//VARIABLES TERCER PANTALLA: MÚSICA 
PImage fondo3; 
String musica = "Música \n Recuérdame - Carlos Rivera \n La llorona - Angélica Vale, Marco Antonio Solís \n Recuérdame - Luis Ángel Gómez Jaramillo \n Juanita - Gael García Bernal \n Un poco loco - Luis Ángel Gómez Jaramillo \n La Santa Cecilia - Un Mundo Raro \n La Bikina - Karol Sevilla \n El latido de mi corazón - Luis Ángel Gómez Jaramillo \n El mundo es mi familia - Luis Ángel Gómez Jaramillo ";
float sub3;
PImage guitarra;

//VARIABLES CUARTA PANTALLA: PRODUCCIÓN
PImage fondo4;
PImage banderines;
String produccion = "Producción y dirección \n Director: Lee Unkrich \n Co-director: Adrian Molina \n Productora: Darla K.Anderson \n Productor ejecutivo: John Lasseter \n Productora asociada: Mary Alice Drumm \n Guión: Adrian Molina, Matthew Aldrich. \n Música cinematografica: Michael Giacchino \n Supervisor: Jason Katz \n Editor: Steve Bloom \n Diseñador de producción: Harley Jessup \n Director técnico de supervisión: David Ryu \n Manager de producción: David Park  \n Director de fotografía: Matt Aspbury  ";
int sub4;
int bande;

//VARIABLES QUINTA PANTALLA: ANIMACIÓN
PImage fondo5;
String animacion = "Animación \n Manager: Jesús Martínez \n Manager de pre-producción: Rachel Raffael-Gates \n Director: Nickolas Rosario \n Corrección: Wendell Lee \n Dibujante: Kristophe Vergne \n Líder de herramientas: Bret Parker \n Animación de desarrollo de personajes \n Dovi Anderson \n Gwendelyn Enderoglu \n Aaron Koressel \n Lindsay Andrus \n Travis Hathaway \n Javier Moya Alonso \n K.C. Roeyer \n \n \n FIN " ;
int sub5; 
PImage petalos;
float petal;

//BOTON DE REINICIO
PImage boton;

void setup(){
size (600,600);
fuente1 = loadFont("CourierNewPS-BoldMT-25.vlw"); 
fondo1 = loadImage ("coco1.jpg");
fondo1.resize(800, 600);

logococo = loadImage ("logococo.png");
logococo.resize (300,170);

fondo2 = loadImage ("coco2.jpg");
fondo2.resize (950,600);

fondo3 = loadImage ("coco3.jpg");
fondo3.resize (1000,600);

guitarra = loadImage ("guitarra.png");
guitarra.resize(100, 50);

fondo4 = loadImage ("coco4.jpeg");

banderines = loadImage("banderines.png");
banderines.resize(600,300);

fondo5 = loadImage("coco5.jpg");
petalos = loadImage("petalos.png");
petalos.resize(100,100);

boton = loadImage("boton.png");
boton.resize(50,50);
}

void draw (){
println(frameCount);
sub = frameCount*2;
sub2 = frameCount;
sub3 = frameCount; 
sub4 = frameCount;
sub5 = frameCount;
bande = frameCount; 
textFont(fuente1);



if(frameCount< 400){
image(fondo1, -50, 0);
image(logococo, 160, 600-sub);

}



if(frameCount>400 && frameCount< 1211){
  image(fondo2, -180, 0);
  textSize(15);
  textAlign(CENTER);
  text(personajes, 180,1000-sub2);
}
if (frameCount > 1211 &&  frameCount < 1950 ){
  image(fondo3, 0, 0);
  image(guitarra, mouseX , mouseY);
  textSize(15);
  textAlign(CENTER);
  text(musica, 250, 1800-sub3);
}

if(frameCount > 1950 && frameCount < 2870){
  image(fondo4,-500,0);
  if(frameCount > 1950 &&  frameCount < 2498){ 
  image(banderines, 0, -2500+bande);
  }
  if(frameCount >= 2498 && frameCount < 2870){
    image(banderines, 0, 0);
  }
  textSize(18);
  textAlign(CENTER);
  text(produccion, 300, 2600-sub4);
}

if(frameCount > 2870){
  image(fondo5, -150,-150);
  petal = random(frameCount/2);
  image(petalos, petal, petal);
  textSize(20);
  textAlign(CENTER);
  text(animacion, 300, 3500-sub5);
}

fill(255, 85, 0);
strokeWeight(3);
stroke(255,255,255);
rect(500, 500, 50, 50, 20);
image(boton, 500,500);
fill(255,255,255);

if(mousePressed){
if(mouseX>500 && mouseX < 550 && mouseY> 500 && mouseY < 550  ){
frameCount=(0);
}
}
}
