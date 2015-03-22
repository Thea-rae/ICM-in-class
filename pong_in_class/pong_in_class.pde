float bx=1,by=100, speedx=1, speedy=2, size=20;
void setup(){
  size(400,500);
   
}
void draw(){
  background(0);
 /* noStroke();
  fill(0,1);
 rect(0,0,width,height);*/
fill(255);
 if((bx>width)||(bx<0)){
  speedx=speedx*-1; 
 } 
 /*if((by>height)||(by<0)){
  speedy=speedy*-1; 
 }*/
  bx=bx+speedx;
  by=by+speedy;
for(int i=0; i< 5; i++){//not drawn with rows...
  for(int j=0; j< 5; j++){
   ellipse(bx+i*25,by+j*25,size,size);
  }
}
 rect(mouseX,height-20,50,10);
 if((bx>mouseX) &&(bx<mouseX+50) && (by>=height-30)||(by<0)){
   speedy =speedy*-1;
 } 
 
 
 /*if(mouseX>=width/2){
   rect(100,100,100,100);
 } else{
    rect(200,200,100,100);
  }
  
 if(mousePressed){ // "mousePressed == true" is the same
   rect(100,100,100,100);
  }
  if(!mousePressed){//"mousePressed == false" is the same
  rect(200,200,100,100);
  }*/
}
