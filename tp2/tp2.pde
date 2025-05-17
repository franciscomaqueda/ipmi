// LOGICA DE ESTADOS y EVENTOS con CONDICIONALES para programar las pantallas de TP2
// AGREGAMOS cambio de pantallas con las flechas del teclado + tiempo con frameCount

//creo mi variable para manejar los estados/pantallas

String estado;
int e;
int M1;
int M2;
int M3;
int M4;
int M5;
int M6;
int M7;
int M8;
PImage jetpack1;
PImage jetpack2;
PImage jetpack3;
PImage jetpack4;
PImage jetpack5;
PImage jetpack6;
PFont fuente2;


void setup() {
  size( 640,480 );
  textAlign( CENTER, CENTER );
  //imagenes
  jetpack1 = loadImage("jetpack1.jpg");
   jetpack2 = loadImage("jetpack2.jpg");
    jetpack3 = loadImage("jetpack3.jpg");
     jetpack4 = loadImage("jetpack4.jpg");
      jetpack5 = loadImage("jetpack5.jpg");
        jetpack6 = loadImage("jetpack6.jpg");
   fuente2 = loadFont("fuente1.vlw");

  //asigno valor por defecto a mis variables
  estado = "pantalla-1";
  e = 1;
  M1 = 0;
  M2 = 0;
  M3 = 0;
  M4 = 0;
  M5 = 0;
  M6 = 0;
  M7 = 0;  
  M8 = 0;
}

void draw() {
  // LOGICA DE ESTADOS: manejo de pantallas
  //---------------------------PANTALLA 1
  
  
 
   
  if ( e == 1 ) {
    //aqui el codigo de la pantalla 1
   
    background( 80 );  
    image(jetpack1, 0, 0, width, 400);

fill(255);
textFont(fuente2);
textSize(16);
text("Concepto del Juego: Jetpack Joyride es un juego de plataformas endless runner \n donde el jugador controla a Barry Steakfries, quien debe volar con un jetpack \n través de un laboratorio repleto de obstáculos y enemigos.", M1, 435  );
    if (M1 < 320){
      M1 = M1+3;
    }
    textSize(20);
  text("¡Hola, utiliza las flechas del teclado \n para avanzar o retroceder!", 320, 50 );   
    
    //manejo del tiempo
    if( frameCount == (60*10) ){
      e = 2;  //se ejecuta un solo frame, un instante: un evento
  
     
    }
    //---------------------------PANTALLA 2
  
 
  } else if ( e == 2 ) {
    // aqui el codigo de la pantalla 2
     
  
    background( 80 ); 
    image(jetpack2, 0, 0, width, 400);

fill(255);
textFont(fuente2);
textSize(16);
text("Mecánica de Juego: El jugador usa un sistema de controles simples para volar \n y evitar obstáculos,como misiles y enemigos, \n mientras recoge monedas y potenciadores.",M2, 435  );
 if (M2 < 320){
      M2 = M2+3;
    }
  


    //manejo del tiempo
    if( frameCount == (60*20) ){
      e = 3;  //se ejecuta un solo frame, un instante: un evento
    }
  //---------------------------PANTALLA 3
  } else if ( e == 3 ) {
    // aqui el codigo de la pantalla 3

    background( 80 ); 
        image(jetpack3, 0, 0, width, 400);

fill(255);
textFont(fuente2);
textSize(16);
text("Objetivos: El objetivo principal es recorrer la mayor distancia posible, \n completando misiones diarias y desbloqueando logros para obtener recompensas \n que mejoran la experiencia de juego.",M3, 435  );
      if (M3 < 320){
      M3 = M3+3;
    }
   //manejo del tiempo
    if( frameCount == (60*30) ){
      e = 4;  //se ejecuta un solo frame, un instante: un evento
    }
  //---------------------------PANTALLA 4
  } else if ( e == 4 ) {
    // aqui el codigo de la pantalla 4

    background( 80 ); 
        image(jetpack4, 0, 0, width, 400);

fill(255);
textFont(fuente2);
textSize(16);
text("Potenciadores y Equipamiento: Durante el juego, se pueden recoger diversos potenciadores, \n como vehículos especiales (por ejemplo, un vehículo de combate), \n que ofrecen mecánicas de juego únicas.También se pueden comprar mejoras y trajes.",M4, 435  );
      if (M4 < 320){
      M4 = M4+3;
    }
    if( frameCount == (60*40) ){
      e = 5;  //se ejecuta un solo frame, un instante: un evento
    }
  //---------------------------PANTALLA 3
  } else if ( e == 5 ) {
    // aqui el codigo de la pantalla 3
    background( 80 ); 
        image(jetpack5, 0, 0, width, 400);

fill(255);
textFont(fuente2);
textSize(16);
text("Estilo Visual y Música: Posee un estilo visual colorido y vibrante, \n con gráficos en 2D y una banda sonora energética \n que complementa la acción rápida del juego.",M5, 435  );
      if (M5 < 320){
      M5 = M5+3;
    }

 
    if( frameCount == (60*45) ){
      e = 6;  //se ejecuta un solo frame, un instante: un evento
    }
  //---------------------------PANTALLA 3
  } else if ( e == 6 ) {
    // aqui el codigo de la pantalla 3

    background( 80 ); 
        image(jetpack6, 0, 0, width, 400);

fill(255);
textFont(fuente2);
textSize(16);
text("Popularidad y Recepción: Desde su lanzamiento, Jetpack Joyride \n ha recibido elogios por su jugabilidad adictiva y ha sido descargado millones de veces, \n convirtiéndose en un clásico de los juegos móviles. \n A tal punto que 10 años despues salio su 2da version, JETPACK JOYRIDE 2",M6, 435  );
      if (M6 < 320){
      M6 = M6+3;
    }

    if( frameCount == (60*50) ){
      e = 7;  //se ejecuta un solo frame, un instante: un evento
    }
  //---------------------------PANTALLA 3
  } else if ( e == 7 ) {
    // aqui el codigo de la pantalla 3

    background( 80 ); 
       

fill(255);
textFont(fuente2);
textSize(25);
text("Hasta aca llega la presentacion, gracias profes por ver, \n buenos dias/tardes/noches ",M7, 240  );
      if (M7 < 320){
      M7 = M8+3;
    }
    
    fill(255);
textFont(fuente2);
textSize(25);
text("Clickea aqui para reinciar el programa y volverlo a ver!",M8, 360  );
      if (M8 < 320){
      M8 = M8+3;
    }
    //size( 640,480 );
    
   fill(0, 200, 100);
   stroke(255);
   rect(220,400,190, 50);
   
   textSize(25);
   fill(255);
   text("Reiniciar!", 315, 425  );
   
}
 
  
  //visualizo el tiempo
  textSize( 20 );
  text( int(frameCount/60), 15, 15 );  //escribo el tiempo en segundos

fill(255, 0, 0);
strokeWeight(3);
stroke(150,0,0);
rect(30,30, 50, 50 );
line(40,55, 70, 55);
line(40,55, 45, 50);
line(40,55, 45, 60);





fill(0, 255, 0);
strokeWeight(3);
stroke(0,150,0);
rect(560, 30, 50, 50);
line(570,55, 600, 55);
line(600, 55, 595, 50);
line(600, 55, 595, 60);

//println(mouseX);
//println(mouseY);
}
void mousePressed() {
  // aca programar el boton de reiniciar
  
//rect(220,400,190, 50);
   
if(mouseX>220 && mouseX<410 && mouseY>400 && mouseY<450){
    estado = "pantalla-1";
    e = 0;
    M1 = 0;
    M2 = 0;
    M3 = 0;
    M4 = 0;
    M5 = 0;
    M6 = 0;
    M7 = 0;  
    M8 = 0;
  
  }
 
  
  
  
}

void mouseReleased() {
  // e = e + 1;   //sumando uno al valor de e
  e++;            //misma expresion simplificada
  println( e );
}



void keyPressed() {  //me muevo entre pantallas
  //if ( key == 'a' ) {
  if ( keyCode == LEFT ) {
    // para pasar a pantalla anterior
    e--;
  }
  //if ( key == 'd' ) {
  if ( keyCode == RIGHT ) {
    // para pasar a pantalla siguiente
    e++;
  }
  println( e );
}
