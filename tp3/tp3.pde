
//https://youtu.be/DBT01xiRu5o

PImage img; 

int cols = 20; // Columnas
int rows = 20; // Filas 

//circulos
float maxTam = 30; 
float minTam = 2;  

int modo = 0; // Modo de animación
color colorActual; // Color aleatorio actual
boolean usarColor = false; // Activar color aleatorio

float velocidad = 0.2; // Velocidad de animación

void setup() {
  size(800, 400); 

  img = loadImage("opart3.jpg"); 
  if (img != null) {
    img.resize(400, 400); 
  }

  ellipseMode(CENTER); // Dibujar desde centro
  noStroke(); 
}

void draw() {
  dibujarFondo(color(255)); 

  if (img != null) {
    image(img, 0, 0); 
  }

  float gridWidth = 400; 
  float gridHeight = 400; 
  float cellW = gridWidth / cols; 
  float cellH = gridHeight / rows; 

  translate(400, 0); // Mover al centro derecho


   //Guarda la posición X e Y del mouse, ajustándola para que esté entre 0 y 400, restando 400 para centrar o desplazar.
  float mx = constrain(mouseX - 400, 0, 400); // X  mouse
  float my = constrain(mouseY, 0, 400);       // Y  mouse

  
  for (int i = 0; i < cols; i++) { // Recorrer columnas
    for (int j = 0; j < rows; j++) { // Recorrer filas
     
      //calcula donde van dentro de cada casilla
      float x = i * cellW + cellW / 2; // Posición X círculo
      float y = j * cellH + cellH / 2; // Posición Y círculo

      float centroX = gridWidth / 2; // Centro grilla X
      float centroY = gridHeight / 2; // Centro grilla Y
     
      //mido que tan lejos esta el circulo del centro
      float dCentro = dist(x, y, centroX, centroY); // Distancia al centro
      float tamBase = map(dCentro, 0, dist(0, 0, centroX, centroY), maxTam, minTam); // Tamaño base

      float dMouse = dist(mx, my, x, y); // Distancia al mouse

      float tam = calcularTamano(dMouse, x, y, mx, my, tamBase); // Tamaño ajustado


      //pulsacion
      float pulso = map(sin(frameCount * 0.3 + i * 3 + j * 5), -1, 1, 0.85, 1.15); 
      tam *= pulso; 

      if (usarColor) {
        fill(colorActual); // Usar color aleatorio
      } else {
        fill(0); // Usar color negro
      }

      ellipse(x, y, tam, tam); // Dibujar círculo
    }
  }
}


// calcula el tamaño del circulo y vuelve a 0
float calcularTamano(float d, float x, float y, float mx, float my, float tamBase) {
  int modoActual = modo % 4; //diferentes modos

 
  // Ondas suaves
  if (modoActual == 0) {
    return tamBase * map(cos(d * 0.05), -1, 1, 0.5, 1.2); 


   // Efecto 1
} else if (modoActual == 1) {
    return tamBase * map(sin(d * 0.07 + frameCount * velocidad), -1, 1, 0.3, 1.4); 


   // Remolino
  } else if (modoActual == 2) {
    float dx = x - mx; // Diferencia X
    float dy = y - my; // Diferencia Y
    float ang = (dx - dy) * 0.05; // Ángulo simulado
    float r = dist(mx, my, x, y); // Distancia al mouse
    return tamBase * map(sin(r * 0.1 + ang + frameCount * velocidad), -1, 1, 0.4, 1.5); 

 // Efecto 0
} else if (modoActual == 3) {
    return tamBase * constrain(map(d, 0, 200, 1.1, 0.6), 0.6, 1.1); 

  } else {
    return tamBase; 
  }
}

// Fondo blanco
void dibujarFondo(color c) {
  background(c);
}

    //colores
void keyPressed() {
  if (key == ' ') {
    usarColor = true; 
    colorActual = color(random(255), random(255), random(255));
  }
   //velocidad
  if (key == 'f') {
    velocidad += 0.05; 
    println("Velocidad: " + velocidad);
  }
   //reinicio 
  if (key == 'r') {
    modo = 0; 
    velocidad = 0.2; 
    usarColor = false; 
    colorActual = color(0); 
    println("Variables reiniciadas");
  }
}

//cambia efecto
void mousePressed() {
  modo++; // Cambiar modo
}
