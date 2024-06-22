//nombre: Ignacio Sannazzaro
//tp3
//legajo: 94034/5

PImage imagen;

color circulo = color(0);
color fondo = color(255);
color circuloInicial = circulo;
color fondoInicial = fondo;

void setup() {
  size(800, 400);
  background(fondo);
  noFill();
  imagen = loadImage("imagen.png");
}

void draw() {
  
  for (int i = 10; i < 400; i += 40) {
    strokeWeight(10);
    stroke(circulo);
    ellipse(200, 200, i, i);
  }
  image(imagen, 400, 0);
  rect (700, 350, 80, 30);
  textAlign(CENTER, CENTER);
  textSize(20);
  text("Reiniciar", 740, 365);
}

void mousePressed() {
  if (mouseX >= 0 && mouseX <= 400 && mouseY >= 0 && mouseY <= 800) {
    Random();
  }  if (mouseX >= 700 && mouseX <= 780 && mouseY >= 350 && mouseY <= 380) {
    reiniciar();
  }
}
