
 PImage ingame ,  entrada , ganador , personalizar , mapas ;
String nombre = "Fall Guys";
String nombre2 = "MAPAS";
String nombre3 ="TU FRIJOLITO!";
String nombre4 = "¿Como se juega?";
String nombre5 = "Ganaste!!!";
String texto1 ="fall Guys es un party royale gratis y multiplataforma\ncompite a lo torpe en absurdos circuitos de obstáculos\ncon amigos o construye tu propio circuito y compartelo con el mundo";
String texto2 = "actualmente hay 82 niveles clásicos diferentes en fall Guys:\n30 circuitos , 10 supervivencia , 13 Puntos\n12 equipos , 3 logica, 2 invisibeans y 12 finales.";
String texto3 = "se puede personalizar tu personaje\ncon patrones de colores y ropa\nque podes ir comprando con monedas del juego\no meter dinero en la tienda del propio juego.";
String texto4 = "compiten en cada partida 32 jugadores en entre 5 0 6  mapas\nalgunos son en equipo y otros mapas en solo";
String texto5 = "se juega una final entre 8 jugadores y el que gana\nse lleva la codiciada  corona dorada";

 color negro = color(0);
 color blanco = color(256);
 color violeta = color (127 , 0 ,257);
 color dorado = color (255, 215, 0);
 int posXnombre = 0;
 int tamTexto = 1;

 String estado;
 int e;
 
 
 int botonX =420;
 int botonY = height -70;
 int botonAncho = 150;
 int botonAlto = 50;
 
 
void setup(){
  size(640,480);
 estado = "entrada";
 e = 1;
   
  entrada = loadImage("entrada.jpg");
ingame = loadImage("ingame.jpg");
personalizar = loadImage("personalizar.jpg");
mapas =loadImage("maps.jpg");
ganador = loadImage("winner.jpg");



}
void draw() {
 if(frameCount == 0){
    e = 1 ;
 }
  
  if (e == 1) {
    image (entrada, 0, 0 );
    posXnombre = posXnombre + 1;
    println(posXnombre);
    textSize(90);
    fill(violeta);
    text(nombre, posXnombre, height/3 );
    textSize(20);
    fill(negro);
    text(texto1, posXnombre, height/2 );
  }
  if (frameCount == (60*5)) {
    e = 2;
    posXnombre =1;
  }
  if (e==2) {
   image (mapas, 0, 0 );
    posXnombre = posXnombre + 1;
    println(posXnombre);
    textSize(90);
    fill(violeta);
    text(nombre2 , posXnombre , height/3);
   textSize(20);
    fill(blanco);
    text(texto2, posXnombre, height/1.4);
  }

  if ( frameCount == (60*10) ) {
    e = 3;
    posXnombre = 1;
  }
  if (e == 3) {
    image(personalizar, 0, 0);
     posXnombre = posXnombre + 1;
    println(posXnombre);
    textSize(90);
    fill(violeta);
    text(nombre3 , posXnombre , height/3);
    posXnombre = posXnombre + 1;
   textSize(20);
    fill(negro);
    text(texto3, posXnombre,height/2 );
  }


  if (frameCount == (60*15) ) {
    e = 4; 
    posXnombre = 1;
  }
  if (e == 4) {
    image(ingame ,0 ,0);
    posXnombre = posXnombre + 1;
    println(posXnombre);
    textSize(90);
    fill(violeta);
    text(nombre4 , posXnombre , height/3);
      posXnombre = posXnombre + 1;
   textSize(20);
    fill(blanco);
    text(texto4, posXnombre,height/1.3 );
  }


  if (frameCount == (60*20) ) {
    e = 5;
    posXnombre=1;
    
  }
  if (e == 5) {
   image(ganador,0 ,0) ;
   posXnombre = posXnombre + 1;
    println(posXnombre);
    textSize(90);
    fill(violeta);
    text(nombre5 , posXnombre , height/3);
    posXnombre = posXnombre + 1;
   textSize(20);
    fill(blanco);
    text(texto5, posXnombre,height/2 );
    
    
    
    //boton reinicio
    fill(blanco);
    rect(botonX, botonY, botonAncho, botonAlto, 10);
    fill(negro);
    textSize(20);
    textAlign(CENTER,CENTER);
    text("REINICIAR", botonX + botonAncho / 2, botonY + botonAlto / 2);


}


  textSize (36) ;
  text( int(frameCount/60), 100, 100);
}

  void mousePressed() {
  if ( e == 5 &&
  mouseX  > botonX && mouseX < botonX + botonAncho &&
  mouseY  > botonY && mouseY < botonY + botonAlto ) {
    
  //reiniciar todo  
  e = 1 ;
  posXnombre = 0;
  frameCount = 0;
  return;
  
  }
  e++ ;
  println (e);
  }
    
   

  void keyPressed() {
    if ( keyCode ==LEFT  ) {
      e--;
    }
    if (keyCode == RIGHT) {
      e++;
    }
    println (e);
  }


















 
