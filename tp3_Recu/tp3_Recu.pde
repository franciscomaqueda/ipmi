//  https://youtu.be/lVGYdFUGmf0?si=6AElcXX7sMW0OUpz

//EXPLICAR LAS CORRECCIONES DE MANERA FACIL



int tamC;
float r = random(0,255);
float r1 = random(0,255);       //flotantes para cambiar el color del fondo
float r2 = random(0,255);
PImage F_10;

void setup() {
  size(800, 400);
  noStroke(); //PARA Los circulos            
  F_10 = loadImage("F_10.jpg");//cargo IMG
  textFont(createFont("Arial", 16)); // fuente paraa el texto
}

void draw() {
  //eveto del mouse al mantener el click
  if (mousePressed == true) {
    tamC = tamC + 3;
    if (tamC > 300){
      tamC = 300;
    }
  } else {
    tamC = tamC - 5; 
    if (tamC < 16){
      tamC = 10;
    }
  }

  background(0);
  image(F_10, 0, 0, 400, 400); // cargo imagen


  int InicioX = 400; // inicio en la zona derecha
  int tamCirFondo = 10; // tamaño del cirulo
   
  for (int x = InicioX; x < width; x += tamCirFondo) {
    for (int y = 0; y < height; y += tamCirFondo) {
      if (mousePressed == true) {
        fill(r, r1, r2, 100);
      } else {
        fill(r, r1, r2);
      }
      circle(x, y, 15);
    }
  }

  int InicioX2 = 400; //inicio de la segunda capa en la zona derecha
  for (int x = InicioX2; x < width; x += tamCirFondo) {
    for (int y = 0; y < height; y += tamCirFondo) {
      fill(25);
      // uso dist para calcular la distancia al mouse
      float distanciaAlMouse = dist(x, y, mouseX, mouseY);
      
      // usamos una funcion que retorna un valor para obtener el tamaño del circulo       //EXPLICAR 
      //esto calcula el tamaño dinamico de los circulos dependiendo la distancia del mouse
      float tamañoActual = calcularTamañoDesdeDistancia(distanciaAlMouse, tamC + 5, 18);

      // dibuja el círculo con tamaño modificado
      ellipse(x, y, tamañoActual, tamañoActual);
    }
  }

  // texto al final después de todo lo que se dibuja
  mostrarTextoSegunMouse(mousePressed);
}

//nueva duncion propia con parametro que NO me retorna valor (tipo void)
// muestra diferentes mensajes segun si el mouse esta presionado o no
void mostrarTextoSegunMouse(boolean presionado) {
  fill(255); // blanco para que se vea el texto
 
  if (presionado) {
    textSize(25);
    text("PULSA LA LETRA C \nPARA CAMBIAR EL COLOR!\nPULSA 2 PARA REINICIAR", 420, height/2);
  } else {
    textSize(20);
    text("MANTENÉ EL CLICK \n PARA EXPERIMENTAR\nPULSA 2 PARA REINICIAR", 420, height/2);
  }
}

// mi funcion propia con parametros que Si  retorna un valor
// calcula un tamaño usando map y distancias. tambien tiene un limite minimo
float calcularTamañoDesdeDistancia(float distancia, float maxTam, float minTam) {
  float tamaño = map(distancia, 0, maxTam, minTam, 10);
  return max(tamaño, 3); // para que no sea menor que 3
}

// mi evento de teclado para cambiar los colores o reiniciar
void keyPressed() {
  if (key == 'c' || key == 'C') {  //ajustado en comparacion al original, lo logre reducir en menos renglones
    r = random(0,255);
    r1 = random(0,255);
    r2 = random(0,255);
  }

  if (key == '2') {
    r = 255;
    r1 = 255;
    r2 = 255;
  }
}
