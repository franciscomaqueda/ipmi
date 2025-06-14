//  https://youtu.be/YTtYMvn7Ldk




int tamC;
float r = random(0,255);
      float r1 = random(0,255);       //con esto colores random al momento de pulsar 
         float r2 = random(0,255);
          float R = (255);
            float R1 = (255);       //con esto colores random al momento de pulsar 
              float R2 = (255);
PImage F_10;
void setup() {
  size(800, 400);
  noStroke(); //PARA Los circulos            
 F_10 = loadImage("F_10.jpg");//cargo IMG


}

void draw() {
 
  //eveto del mouse al mantener el click
   if (mousePressed == true) {
    tamC = tamC+3;
     if (tamC > 300){
         tamC= 300;
     }
  } else {
    tamC = tamC-5; 
     if (tamC < 16){
        tamC=10;
      }
  }



  background(0);
 image(F_10,0,0,400,400);

  int InicioX = 400; // inicio en la zona derecha
  int tamCirFondo = 10; 
  
  
    for (int x = InicioX; x < width; x += tamCirFondo) {
    for (int y = 0; y < height; y += tamCirFondo) {
      fill(255);
      circle(x, y, 10);
    }
  }
      
      
      int InicioX2 = 400; // inicio en la zona derecha
        int tamCirFondo2 = 10; // tamaño base
   
    for (int x = InicioX2; x < width; x += tamCirFondo2) {
    for (int y = 0; y < height; y += tamCirFondo2) {
      if (mousePressed == true) {
    
        fill(r, r1, r2, 100);
    
      }
      else
      fill(r,r1,r2);
      circle(x, y, 15);
    }
  }
    
      
      
      
  int startX = 400; // inicio en la zona derecha
  int sizeCirculo = 10; // tamaño base
  
  // ciclo en la cuadrícula
  for (int x = startX; x < width; x += sizeCirculo) {
    for (int y = 0; y < height; y += sizeCirculo) {
      fill(25);
      // Calculamos la distancia al mouse
      float distanciaAlMouse = dist(x, y, mouseX, mouseY);
      
      // Usamos map para ajustar tamaño dependiendo de si essta cerca o lejos
      // Cuando esta cerca tamaño grande
      // Cuando esta lejos, tamaño normal
      //tamC = 15;
      
      float tamañoActual = map(distanciaAlMouse, 0, tamC+5, 18, sizeCirculo); //el map lo vimos en la clase que nos dio Diego, reasigna un número de un rango a otro. 

      
      // utilizaos un if (condicional) para que no sean tan grandes los circulos al alejarse 
      if (tamañoActual < 1) {
        tamañoActual = 3;
      }
      
      // Dibujar el círculo con tamaño modificado
      ellipse(x, y, tamañoActual, tamañoActual);
    }
 }
 

 
    if (mousePressed == true) {
          textSize(25);
       text("PULSA CUALQUIER LETRA \nPARA CAMBIAR EL COLOR!\n PULSA 2 PARA REINICIAR",450,height/2);
       
     }else{
        textSize(20);
 text("MANTEN EL CLICK PARA EXPERIMENTAR\n PULSA 2 PARA REINICIAR",425,height/2);
     }
}
void keyPressed(){
           if (key == 'C'){
         r = random(0,255);
           r1 = random(0,255);
       r2 = random(0,255);
           }else { if(key == 'c');
         r = random(0,255);
           r1 = random(0,255);
            r2 = random(0,255);
    }
     if (key == '2'){   //ME DEVUELVE LOS COLORES A BLANCO
         r = 255;
           r1 = 255;
          r2 = 255;
  }
}
