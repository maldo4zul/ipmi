PImage img0, img1, img2, img3, img4, img5, img6, img7;
color bordeboton;
color interiordeboton;
int contador;
int trans;
int trans1;
int trans2;
int trans3;
PFont fuente;

void setup(){
  img0 = loadImage("virustitulo.png");
  img1 = loadImage("virus1.png");
  img2 = loadImage("Federico.jpg");
  img3 = loadImage("Marcelo.jpg");
  img4 = loadImage("Julio.jpg");
  img5 = loadImage("Mario.jpg");
  img6 = loadImage("Ricardo.jpg");
  img7 = loadImage("Enrique.jpg");
  size(640,480);
  fuente = loadFont("Bahnschrift-48.vlw");
    bordeboton = color(#FF0044);
    interiordeboton = color(#FFFFFF);
    contador = 0;
    trans = 0;
    trans1 = 0;
    trans2 = 0;
    trans3 = 0 ;
}
void draw(){
  contador = contador + 1;
  // pantalla1
 background(255); 
 textAlign(LEFT, TOP);
  if (contador<360) {
 image(img0, 135, 110);
 fill(0);
 if (trans< 255) {
        trans += 4;
      }
      fill(0, trans);
textFont(fuente);
textSize(20);
text("Virus es una banda argentina de rock y new wave fundada en 1980 en La Plata, liderada originalmente por el icónico y magnético Federico Moura.", 72, 332, 530, 332);
  }
//pantalla2
if ((contador>360) && (contador<720)) {
  image(img2, 32, 28, 273, 268);
  image(img3, 340, 28, 273, 268);

if (trans1< 255) {
        trans1 += 4;
      }
      fill(0, trans1);
      textSize(15);
   text("Federico Moura (1951-1988) fue un músico, cantautor, productor y diseñador argentino, fue la voz principal, compositor y productor de la banda Virus.", 32, 317, 273, 415);
   text("Marcelo Moura (1960) es un músico, compositor, productor y cantante argentino, reconocido como el tecladista original y actual vocalista de la banda de rock Virus.  Es el menor de los hermanos Moura.", 338, 317, 273, 415);
 }
  
   //pantalla3
  if((contador>720) && (contador<1080)) {
  image(img4, 32, 28, 273, 268);
  image(img5, 340, 28, 273, 268);
  if (trans2< 255) {
        trans2 += 4;
      }
      fill(0, trans2);
      textSize(15);
   text("Julio Moura (1956) es un músico autodidacta, guitarrista, pianista y compositor argentino, reconocido como el principal guitarrista y socio creativo de la banda Virus, formación que lideró junto a sus hermanos Federico y Marcelo Moura.", 32, 317, 273, 415);
   text("Mario Serra (1950) es un baterista argentino reconocido como el baterista original y fundador del grupo de rock Virus, junto a los hermanos Federico y Marcelo Moura.", 338, 317, 273, 415);
}
//pantalla4
if((contador>1080) && (contador<1440)) {
  image(img6, 32, 28, 273, 268);
  image(img7, 340, 28, 273, 268);
  if (trans3< 255) {
        trans3 += 4;
      }
      fill(0, trans3);
      textSize(15);
   text("Ricardo Serra fue un guitarrista, compositor, ingeniero de sonido y miembro fundador de la histórica banda argentina de rock y new wave Virus.  Junto a los hermanos Moura y su hermano Mario Serra (batería), conformó la formación clásica que lanzó los primeros éxitos del grupo a principios de los años 80.", 32, 317, 273, 415);
   text("Enrique Mugetti fue el bajista fundador y miembro original de la banda argentina Virus, formada en 1981 en La Plata.  Junto a los hermanos Federico y Julio Moura, y los hermanos Serra, Mugetti fue clave en la definición del sonido new wave y pop rock del grupo durante su etapa inicial.", 338, 317, 273, 415);
}
//pantalla5
 if (contador>1440) {
  image(img1, 0, 0, 650, 479); 
 //boton
  stroke(0);
  strokeWeight(3);
  textAlign(CENTER, CENTER);
if (mouseX > 46 && mouseX < 588 && mouseY > 411 && mouseY < 461) {
      fill(#95DDEA);
    } else {
      fill(255);
    }

    rect(46, 411, 542, 50);
    fill(#1A1919);
    textSize(15);
    text("REPETIR", 317, 432);
 }
}
 void mouseClicked() {
  if (contador > 1440) { 

    if (mouseX > 46 && mouseX < 588 && mouseY > 411 && mouseY < 461) {
      contador = 0;
      trans = 0;
      trans1 = 0;
      trans2 = 0;
      trans3 = 0;
    }

  } 
}
