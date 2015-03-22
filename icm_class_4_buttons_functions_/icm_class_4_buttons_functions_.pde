//variables: stave postion,button: size/position
int staveYpos = 50;
int lineSpacing = 5;
int buttonX = 30;
int buttonY = 300;
int buttonWidth = 30;
int buttonHeight = 30;
boolean buttonispressed;

void setup(){
  size (500,600);//open window
  background(255);//make background white
  drawLines(staveYpos,lineSpacing);
  
}

void draw(){
  
  drawbutton(buttonX, buttonY,buttonWidth, buttonHeight);
  
}

void mousePressed(){//void means it does not have a return type.
  //if pressing button draw new stave.buttonX, buttonY,buttonWidth, buttonHeight;
  if(buttonispressed(buttonX, buttonY,buttonWidth, buttonHeight)==true){
    staveYpos=staveYpos+100;
    drawLines(staveYpos,5);
  } else {drawNotes(mouseX,mouseY, lineSpacing); //draw notes
  }
}
