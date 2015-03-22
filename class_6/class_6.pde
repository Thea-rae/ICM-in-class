Ball[] balls;
boolean shake = true;


void setup() {
  size(600, 600);
  background(255);
  balls = new Ball[0];
}


void draw() {
  for (int i=0; i < balls.length; i++) {
    balls[i].drawBall();
    balls[i].shake();
  }
  for (int i=0; i < balls.length; i++) {
    for (int ii=0; ii < balls.length; ii++) {
      line(balls[i].x, balls[i].y, balls[ii].x, balls[ii].y);
    }
  }
}
void mousePressed() {
  if (balls.length>10){
    balls= (Ball[]) subset(balls,1,10);
    // balls= (Ball[]) shorten(balls);
  }
  
 
  
  balls=(Ball[])append(balls, new Ball(mouseX, mouseY));
}


class Ball {
  int x, y;
  int startTime;
  Ball(int _x, int _y) {
    x=_x;
    y=_y;
    startTime= second();
  }

  void drawBall() {
    fill(10, 120, 100);
    ellipse(x, y, 10, 10);
    fill(255, 5);
    rect(0, 0, width, height);
  }

  void shake() {
    if (second() - startTime< 10) {
      x= x+int (random(-3, 3.5));
      y= y+int (random(-2, 2));
    }
  }

  void drawline() {
  }
}
