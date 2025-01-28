float f; // Creo la variable focal de la lente
float d_i, h_i; // Variables para almacenar la posición y tamaño de la imagen

void setup() {
  size(500, 500);
}

void draw() {
  f = width / 20; // Defino la focal como 1/20 la anchura, en píxeles, de la imagen
  translate(width / 2, height / 2); // La función translate fija el origen de coordenadas en la posición dada como argumento
  background(255);
  strokeWeight(2);
  stroke(0, 0, 0);
  line(-width / 2, 0, width / 2, 0); // Defino el eje óptico de la imagen como una línea en el centro de la imagen
  stroke(255, 0, 0);
  dibujaFlecha(0, 0, 100, 270); // Dibujo la parte superior de la lente como una flecha
  dibujaFlecha(0, 0, 100, 90); // Ahora la parte inferior de la lente como una flecha al revés
  translate(0, 0);
  stroke(0, 0, 0);
  line(-f, -10, -f, 10); // Hago una línea en la posición lente - focal
  texto("-F", -f, +30); // llamo a esta línea -F
  line(f, -10, f, 10); // Hago una línea en la posición lente + focal
  texto("F", f, +30); // Llamo a esta línea F
  stroke(0, 0, 255);
  float d_0 = mouseX - width / 2; // Calculo la posición del objeto a partir de la posicion del ratón en el eje x
  float h_0 = (mouseY - height / 2); // Calculo el tamaño del objeto a partir de la posición del ratón en el eje y
  
  if (h_0 > 0) {
    // Dibujo el objeto como una flecha hacia arriba cuando está por encima del eje óptico
    stroke(0, 0, 255);
    dibujaFlecha(int(d_0), int(0), int(h_0), 90);
  }
  
  if (h_0 < 0) {
    // Dibujo el objeto como una flecha hacia abajo cuando va por debajo del eje óptico
    stroke(0, 0, 255);
    dibujaFlecha(int(d_0), int(0), int(-h_0), 270);
  }
  
  // 1. Calculo la posición y tamaño de la imagen
  d_i = (f * d_0) / (d_0 - f);
  h_i = (d_i * h_0) / d_0;
  
  // 2. Dibujo la imagen como una flecha
  stroke(0, 255, 0);
  
  if (h_i > 0) {
    // Dibujo la imagen como una flecha hacia arriba cuando es real
    dibujaFlecha(int(d_i), int(0), int(h_i), 90);
   }
   
     if (h_i < 0) {
    // Dibujo la imagen como una flecha hacia abajo cuando es virtual
    dibujaFlecha(int(d_i), int(0), int(-h_i), 270);
  }
  
  // 3. Escribo un texto con la posición y tamaño del objeto, de la imagen y si la imagen es virtual o real
  stroke(0);
  textSize(14);
  textAlign(CENTER);
  text("Objeto: (" + d_0 + ", " + h_0 + ")", 0, -50);
  text("Imagen: (" + d_i + ", " + h_i + ")", 0, 50);
  
  if (d_i < 0) {
    text("Imagen: Virtual", 0, 70);
  } else {
    text("Imagen: Real", 0, 70);
  }
}

// Función para dibujar las flechas
// cx = coordenada x inicial
// cy = coordenada y inicial
// len = longitud de la flecha
// ang = Ángulo que tiene la flecha
void dibujaFlecha(int cx, int cy, int len, float ang) {
  pushMatrix();
  translate(cx, cy);
  rotate(radians(ang));
  line(0, 0, len, 0);
  line(len, 0, len - 8, -8);
  line(len, 0, len - 8, 8);
  popMatrix();
}

// Función para escribir texto en pantalla
// label = texto a mostrar
// x = coordenada x 
// y = coordenada y 
void texto(String label, float x, float y) {
  textAlign(CENTER);
  textSize(12);
  text(label, x, y);
  fill(0);
}
