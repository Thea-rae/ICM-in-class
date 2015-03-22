import processing.video.*;

Movie mov;

void setup() {
  size(700, 700);
  // pinguino= loadImage("http://cd1.dibujos.net/dibujos/pintar/pinguino-bailando_2.png");
mov = new Movie (this, "bob.mov");
mov.loop();

void movieEvent(Movie movie){
  mov.read();
}

}

void draw() {
  image(move,0,0,mouseX,mouseY);
  background(255);
  // imageMode(CENTER);
  // image(pinguino, mouseX, mouseY);
}
