//nombre: Ignacio Sannazzaro
//tp2
//legajo: 94034/5

PImage imagen;

void setup() {
  size(800, 400);
  imagen = loadImage("foto.png");
  imagen.resize(400,400);
  background(255,255,255);
  image(imagen,0,0);
}

void draw() {
  translate(400,0);
  line(400,0,400,800);
  
//pelo
  push();
  stroke(7);
  noFill();
  bezier(185,23,208,1,236,1,242,53);
  bezier(211,25,241,9,269,28,260,67);
  pop();
  
//camisa
  push();
  fill(#FFE836);
  ellipse(100,400,70,130);
  pop();
  ellipse(100,340,90,80);

  rect(90,290,200,120);
  push();
  fill(#FFE836);
  ellipse(250,400,70,130);
  pop();
  ellipse(250,340,90,80);
  
//cabeza
  push();
  fill(#FFE836);
//cabeza
  ellipse(190,160,190,270);
//oreja
  ellipse(270,190,40,50);
  pop();
  
//ojo
  ellipse(130,130,80,80);
  
//barba
  push();
  fill(#A78C71);
  ellipse(160,230,150,120);
  pop();
  
//nariz
  push();
  fill(#FFE836);
  ellipse(160,170,90,30);
  pop();
  
//ojo
  ellipse(200,140,80,80);

//boca
  rect(100,215,100,40);
  
  push();
  fill(0);
  ellipse(127,130,10,10);
  ellipse(200,140,10,10);
  pop();
  
  push();
  strokeWeight(2);
  line(115,215,115,255);
  line(140,215,140,255);
  line(170,215,170,255);
  pop();
}
