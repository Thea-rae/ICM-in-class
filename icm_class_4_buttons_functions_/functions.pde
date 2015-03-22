void drawLines(int liney, int linespacing){//drawing stave
  for(int i =0; i<5; i++){    
    line(0,liney+linespacing*i, width,liney+linespacing*i);
  }   
}

void drawNotes(int noteX, int noteY, int linespacing){

  stroke(0);
  fill(0);
  if(noteY>linespacing*2.5+staveYpos){
  ellipse(noteX,noteY, 3,3);
  line(noteX+2,noteY, noteX+2, noteY-7);//make this change direction by making LineSpacing a global variable 
  } else {
    ellipse(noteX,noteY, 3,3);
  line(noteX-2,noteY, noteX-2, noteY+7);
  }
    

}

void drawbutton (int x,int y,int w, int h){
  //fill(0);
  noFill();
  stroke(0);
  rect(x,y,w,h);
}

boolean buttonispressed(int x, int y, int w, int h){
  if (mouseX>x && mouseX<x+w && mouseY>y &&mouseY<y+h){
    return true;
  } else {
    return false;
  }
}
