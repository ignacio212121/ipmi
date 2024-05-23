//Ignacio Sannazzaro
//Comisión 3
//Legajo 94034/5

PImage imagen1, imagen2, imagen3, imagen4;
PFont fuente;

String texto1, texto2, texto3;

int tiempo = 0;
int pantalla = 1;

int opacidad = 0;
int fade = 2;

void setup() {
  size (640,480); 
  
  imagen1 = loadImage ("1.jpg");
  imagen2 = loadImage ("2.jpg");
  imagen3 = loadImage ("3.jpg");
  imagen4 = loadImage ("4.jpg");
  
  texto1 = "El arte electrónico, o arte digital, utiliza tecnologías digitales como medio \nprincipal. Los artistas crean obras estáticas o dinámicas, bidimensionales o \ntridimensionales, que a menudo invitan a la interacción del espectador, \nhaciendo que el público participe activamente en la obra.";
  texto2 = "Con el avance de tecnologías como la inteligencia artificial y la realidad \nvirtual, los artistas pueden explorar nuevos límites creativos. Estas \ntecnologías permiten la creación de obras que reaccionan en tiempo real y \nque pueden ser experimentadas globalmente, rompiendo las barreras físicas \ndel arte tradicional.";
  texto3 = "El arte electrónico también aborda temas contemporáneos como la identidad, \nla privacidad y la relación entre humanos y máquinas. Busca no solo impactar \nvisualmente, sino también provocar reflexiones sobre la interacción del ser \nhumano con la tecnología. En resumen, es una forma de expresión que \ncuestiona y refleja el papel de la tecnología en la sociedad moderna.";
  
  fuente = createFont("Power Punchy.otf",15);
  textFont(fuente);
}

void draw() {
  
  tiempo++;
  
  if (tiempo == 400) {
    avanzarpantalla();
    tiempo = 0;
  }
  
  if (pantalla == 3 || pantalla == 5 || pantalla == 7) {
    if (opacidad < 255) {
      opacidad += fade;
    }
  } else {
    opacidad = 0;
  }
  
  if (pantalla == 1){
    image(imagen4,0,0);
    imagen4.resize(640,480);
    push();
    noStroke();
    fill(255);
    rect(474,322,75,25);
    pop();
    fill(0);
    text("Empezar",480,340);
  }
  
  if (pantalla == 2){
    
    image(imagen1,0,0);
    imagen1.resize(640,480);
    push();
    saltar();
    pop();    
    push();
    sombra(imagen1, 0, imagen1.height - 100, imagen1.width, 100);
    sombra2(imagen1, 0, 360, imagen1.width, imagen1.height / 2);
    pop();
    
    text(texto1,20,400);
    fill(255);
  }
  
  
  if (pantalla == 3){
    image(imagen1,0,0);
    imagen1.resize(640,480);
    push();
    sombra(imagen1, 0, imagen1.height - 100, imagen1.width, 100);
    sombra2(imagen1, 0, 360, imagen1.width, imagen1.height / 2);
    pop();
    push();
    saltar();
    pop();
    fill(255, 255 - opacidad);
    text(texto1,20,400);
  }
  
  
  if (pantalla == 4){
    image(imagen2,0,0);
    imagen2.resize(640,480);
    push();
    sombra(imagen2, 0, imagen1.height - 100, imagen1.width, 100);
    sombra2(imagen2, 0, 360, imagen1.width, imagen1.height / 2);
    pop();
    push();
    saltar();
    pop();
    fill(255);
    text(texto2,20,400);
  }
  
  
  if (pantalla == 5){
    image(imagen2,0,0);
    imagen2.resize(640,480);
    push();
    sombra(imagen2, 0, imagen1.height - 100, imagen1.width, 100);
    sombra2(imagen2, 0, 360, imagen1.width, imagen1.height / 2);
    pop();
    push();
    saltar();
    pop();
    fill(255, 255 - opacidad);
    text(texto2,20,400);
  }
  
  
  if (pantalla == 6){
    image(imagen3,0,0);
    imagen3.resize(640,480);
    push();
    sombra(imagen3, 0, imagen1.height - 100, imagen1.width, 100);
    sombra2(imagen3, 0, 360, imagen1.width, imagen1.height / 2);
    pop();
    push();
    saltar();
    pop();
    fill(255);
    text(texto3,20,400);
  }
  
  
  if (pantalla == 7){
    image(imagen3,0,0);
    imagen3.resize(640,480);
    push();
    sombra(imagen3, 0, imagen1.height - 100, imagen1.width, 100);
    sombra2(imagen3, 0, 360, imagen1.width, imagen1.height / 2);
    pop();
    push();
    saltar();
    pop();
    fill(255, 255 - opacidad);
    text(texto3,20,400);
  }
  
  
  if (pantalla == 8){
    image(imagen4,0,0);
    imagen4.resize(640,480);
    push();
    noStroke();
    fill(255);
    rect(474,322,147,25);
    pop();
    fill(0);
    text("Volver a Empezar",480,340);
  }
}

void mousePressed() {
  if (mouseX >= 474 && mouseX <= 474 + 75 && mouseY >= 322 && mouseY <= 322 + 25) {
    pantalla = 2;
  } else if (mouseX >= 474 && mouseX <= 474 + 147 && mouseY >= 322 && mouseY <= 322 + 25) {
    pantalla = 1;
  }
}

void keyPressed() {
  if (key == ' ') {
    if(pantalla != 1 && pantalla != 8){
      if (pantalla == 2 || pantalla == 3){
        pantalla = 4;
      }
      else if (pantalla == 4 || pantalla == 5){
        pantalla = 6;
      }
      else if (pantalla == 6 || pantalla == 7){
        pantalla = 8;
      }
    }
  }
}


void saltar() {
  textSize(30);
  text("PULSA ESPACIO PARA SALTAR",120,30);
}

//Funciones :D

void avanzarpantalla() {
  if (pantalla == 2 || pantalla == 3 || pantalla == 4 || pantalla == 5 || pantalla == 6 || pantalla == 7) {
    pantalla++;
  }
}

void sombra (PImage img, float x, float y, float w, float h) {
  for (int i = 0; i < h; i++) {
    float a = map(i, 0, h, 0, 130);
    fill(0, 0, 0, a);
    noStroke();
    rect(x, y + i, w, 1);
  }
}

void sombra2  (PImage img, float x, float y, float w, float h) {
    for (int i = 0; i < h; i++) {
    float a = map(i, 0, h, 130, 0);
    fill(0, 0, 0, a);
    noStroke();
    rect(x, y + i, w, 1);
  }
}
