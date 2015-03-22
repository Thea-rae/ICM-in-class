PImage pinguino;

void setup() {
  size(700, 700);
  pinguino= loadImage("http://cd1.dibujos.net/dibujos/pintar/pinguino-bailando_2.png");
}

void draw() {
  background(255);
  imageMode(CENTER);
  image(pinguino, mouseX, mouseY);
}
