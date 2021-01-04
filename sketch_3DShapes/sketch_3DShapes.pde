float rotx,roty;
boolean w,a,s,d;

void setup(){
  size(800,800,P3D);
}

void draw(){
  background(255);
  ball(600,height/2,0,100,100);
  cube(200,height/2,0,100,100);
}

void cube(float x,float y, float z,color c,float size){
  pushMatrix();
  translate(x,y,z);
  fill(c);
  box(size);
  popMatrix();
}

void ball(float x,float y,float z,color c,float size){
  pushMatrix();
  translate(x,y,z);
  fill(c);
  sphere(size);
  popMatrix();
}

void mouseDragged(){
  rotx+=(pmouseY-mouseY)*0.01;
  roty+=(pmouseX-mouseX)*-0.01;
}

void keyPressed(){
  if(key=='w'||key=='W')w=true;
  if(key=='a'||key=='A')a=true;
  if(key=='s'||key=='S')s=true;
  if(key=='d'||key=='D')d=true;
}

void keyReleased(){
  if(key=='w'||key=='W')w=false;
  if(key=='a'||key=='A')a=false;
  if(key=='s'||key=='S')s=false;
  if(key=='d'||key=='D')d=false;
}
