void setup () {
size(500,500);
background(243, 191, 255);
}

void draw (){
stroke(134, 78, 5) ;
strokeWeight (2);
//pizza
fill(252, 241, 5);
triangle(113, 83, 359, 83, 233, 331); 
fill(124, 78, 5);
quad(113, 83, 122, 102, 348, 102, 360, 83);
fill(255, 0 , 0);
strokeWeight(0);
ellipse(174, 129, 40, 40); 
ellipse(251, 158, 60, 60);
ellipse(304, 123, 30, 30); 
ellipse(207, 215, 40, 40); 
ellipse(252, 235, 30, 30);
ellipse(232, 278, 25, 25);
println(mouseX, mouseY);
//vaso
fill( 255, 255, 255);
stroke(0);
strokeWeight(2);
rect(365, 150, 100, 180);
ellipse(415, 151, 100, 40);
fill(0, 0 ,0);
stroke(0);
strokeWeight(0);
ellipse(415, 155, 100, 32);
//bombilla
fill(255, 0 , 0);
noStroke();
rect(404, 94, 10, 78);
fill(255, 0 , 0);
noStroke();
rect(404, 94, 40, 10);
//Bugiolachi, José
//tp0 Figuras
}
