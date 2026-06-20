//https://youtu.be/UNIllEOuHW4

PImage miImage;
color[][] colores1 = new color[21][14];
color[][] colores2 = new color[21][14];


void setup() {
  size(800, 400);
  miImage = loadImage("07.png");
  for (int j = 0; j < 21; j++) {
  for (int i = 0; i < 14; i++) {
      colores1[j][i] = color(0);
      colores2[j][i] = color(0);
    }
  }
}


void draw() {
  background(255);
  image(miImage, 0, 0, 400, 400);
  
  DegradeCircular(598, 200, 400, 280, 30, color(255), color(0)); 
  for (int j = 0; j < 21; j++) {
  for (int i = 0; i < 14; i++) {

      fill(colores1[j][i]);
      ellipse(i * 31 + 400, j * 20 - 6, 16, 9);
    }
  } 
  for (int y = 0; y < 21; y++) {
  for (int x = 0; x < 14; x++) {
      fill(colores2[y][x]);
      ellipse(x * 31 + 415, y * 20 + 5, 16, 9);
    }
  }
}
void mousePressed() {
  for (int j = 0; j < 21; j++) {
  for (int i = 0; i < 14; i++) {
      float x = i * 31 + 400;
      float y = j * 20 - 6;

      if (dist(mouseX, mouseY, x, y) < 8) {
        colores1[j][i] = colorAleatorio(255);
      }
    }
  } 
  for (int y = 0; y < 21; y++) {
  for (int x = 0; x < 14; x++) {
      float posX = x * 31 + 415;
      float posY = y * 20 + 5;

      if (dist(mouseX, mouseY, posX, posY) < 8) {
        colores2[y][x] = colorAleatorio(255);
      }
    }
  }
}


void keyPressed() {

  if (key == 'r' || key == 'R') {

    for (int j = 0; j < 21; j++) {
      for (int i = 0; i < 14; i++) {

        colores1[j][i] = color(0);
        colores2[j][i] = color(0);
      }
    }
  } else {
    
    println("Presiona R para reiniciar");
  }
}
color colorAleatorio(float maxColor) {
  return color(random(maxColor), random(maxColor), random(maxColor));
}

void DegradeCircular(float x_, float y_, float ancho_, float alto_,int cant_, color col1_, color col2_) {
  push();
  translate(x_, y_);
  for (int i = 0; i < cant_; i++) {
    float tamAncho = map(i, 0, cant_ - 1, ancho_, 250);
    float tamAlto = map(i, 0, cant_ - 1, alto_, 170);
    color col = lerpColor(col1_, col2_, (float)i / (cant_ - 1));
    
    fill(col);
    noStroke();
    ellipse(0, 0, tamAncho, tamAlto);

  }
  pop();
  
 
}
