PImage FOTOBLACK1;

void setup() {  
  size(800, 400); // Establece el tamaño de la ventana a 800x400 píxeles.    
  background(195);
  FOTOBLACK1 = loadImage("FOTOBLACK1.jpg");

   
}  

//--------------------------------------------------------------------------------------------------



void draw() {
  image(FOTOBLACK1, 00, 0, 400, 400);
  
  {strokeWeight(1);

   




//sombra
{
 fill(128,128,128); // Color
 stroke(128);  
 beginShape();
    vertex (537,216);
    vertex (510,247);
    vertex (464,256);
    vertex (418,260);
    vertex (462,272);
    vertex (467,291);
    vertex (520,304);
    vertex (543,315);
    vertex (583,308);
    vertex (588,295);
    vertex (545,275);
    vertex (535,246);
  endShape(CLOSE);
}
 
//fondo
  }
//almohada (izq)
{
  
  fill(0, 102, 153);
  stroke(0);  
  beginShape();
    vertex(431,61);
    vertex(518,60);
    vertex(606,53);
    vertex(690,38);
    vertex(701,84);
    vertex(732,140);
    vertex(431,151);
    vertex(414,162);
    vertex(432,113);
  endShape(CLOSE);

//detalles almohada
{strokeWeight(3);
    line(732,140, 738,136);
    line(437,122, 485,118);
    line(447,107, 507,110);
}
    line(733,137, 705,87);
    line(705,87, 693,39);

{strokeWeight(1);
//almohada (der)
beginShape();
    vertex(695,11);
    vertex(694,37);
    vertex(707,84);
    vertex(737,137);
    vertex(766,132);
    vertex(800,130);
    vertex(800,10);
    vertex(790,12);
    vertex(777,11);
    vertex(769,12);
    vertex(753,11);
    vertex(738,13);
  endShape(CLOSE);

//cama
line(413,162, 400, 172);
  }
}
{strokeWeight(1);
 stroke(0);
 line(0,0,0,0);}
 
 
  
 
 fill(140,140,140);
 beginShape();
  vertex(677,117);
  vertex(695,147);
  vertex(707,147);
  vertex(730,169);
  vertex(736,198);
  vertex(734,213);
  vertex(731,218);
  vertex(737,238);
  vertex(717,254);
  vertex(704,257);
  vertex(702,268);
  vertex(650,296);
  vertex(608,295);
  vertex(589,294);
  vertex(544,275); 
  vertex(535,243); 
  vertex(536,214); 
 endShape();
 
 line(677,117, 704,163); 
 line(734,213, 708,248); 
 line(709,218, 702,268); 

//cara{

  fill(120,120,120);
  stroke(0);  
  beginShape();
//cara lado derecho
  vertex(597,270);
  vertex(630,250);
  vertex(640,230);
  vertex(670,200);
  vertex(676,180);
  vertex(670,155);
  vertex(674,140);
  vertex(673,129);
  vertex(686,83);
  vertex(687,74);
  vertex(677,80);
  vertex(645,123);
  vertex(674,84);
  vertex(631,111);
  vertex(597,105);


//lado izquierdo
  vertex(560,108);
  vertex(548,101);
  vertex(542,101);
  vertex(504,68);
  vertex(520,123);
  vertex(518,136); 
  vertex(524,150);
  vertex(518,180);
  vertex(526,200);
  vertex(560,250);
  vertex(597,270);
 
endShape(CLOSE);

fill(220,220,220);

  beginShape();
    vertex(597,270);
    vertex(630,250);
    vertex(640,230);
    vertex(597,260);
    vertex(548,231);
    vertex(561,250);
  endShape(CLOSE);

 line(638,127,645,123);
 line(553,136, 504,68);
//oreja derecha
  
  

  
  
  //carita de abajo para arriba (boca, nariz)
//(boca, nariz)
  noFill();
  triangle(595,256, 605, 245, 585,245 );
   line(595,256, 595,260);
   line(595,260, 600,263);
   line(590,263, 595,260);
  
//(nariz, ojitos y bigotes)
//izq
  line(582,238, 574,203);
  line(574,203, 546,190);
  line(546,190, 550,200);
  line(550,200, 568, 209);
  line(568, 209, 577,217);
//derecha
  line(607,236, 615,203);
  line(615,203, 640,193);
  line(640,193, 633,201);
  line(633,201, 619,208);
  line(619,208, 612,216);
  
  
//BIGOTES

 line(610,253, 654, 264);
 line(618,249, 680, 244);
 line(619, 252, 690,254);
 line(611,248, 665,235);

 line(582,254, 563,262);
 line(576,252, 524, 250);
 line(581,249, 512,224);
 line(572,249, 501,240);


//MACHITAS DE BLACK
line(585,150, 582,175);
line(582,175, 585,191);

 line(594,194, 594,175);
 line(596,175, 593,147);
 line(603,192, 606,178);
 line(611,193, 620,181);
 line(576,194, 569,180);

 line(608,295, 656,281);
 line(608,294, 571,276);

println("X:");
println(mouseX);
println("Y:");
println(mouseY);

  
}
