//import gifAnimation.*;
//GifMaker fichero;
PShape s ,p,box;
int count=0;
PImage textureC;
float colors[]={255,255,255};
Boolean keys[]={false,false,false,false,false,false};
float radius,sceneX,sceneY,sceneZ;
Boolean menu;
void setup(){
  size(1000,700,P3D);
  s=loadShape("co/stage.obj");
  s.scale(20);
  p=loadShape("objeto/12248_Bird_v1_L2.obj");
  textureC=loadImage("texture/cube.jpg");
  box= createShape(BOX,30);
  box.setTexture(textureC);
  sceneX=0;
  sceneY=-60;
  sceneZ=800;
  radius=360;
  menu=true;
  //count=0;
  //fichero= new GifMaker(this,"demo.gif");
  //fichero.setRepeat(0);
}

void draw(){
   background(0);
   ligthsObjects();
   textSize(30);
   fill(0,75,75);
   text("ConcertCuak",-9,-151,599);
   
   fill(255);
   text("ConcertCuak",-10,-150,600);
   fill(255);
   if(menu){
      menu();     
   }else{
     cameras();
   }
  // count++;
  // if(count>=5){
  //   count=0;
  // fichero.addFrame();
  //}
  
}

void menu(){
  camera(20,-100,1000,20,-100,700,0,1,0);
  pushMatrix();
  //text("PatoConcierto",-10,-150,600);
  textSize(20);
  text("Controles:",-125,-150,600);
  textSize(10);
  text("-Moverse: awsd",-105,-135,600);
  text("-Cámara: MOUSE",-105,-120,600);
  text("-Arriba/abajo: SPACE, SHIFT",-105,-105,600);
  text("-Cambiar foco a fiesta: PressMouse (ALERTA EPILEPSIA)",-105,-90,600);
  text("-Salir del menú: ENTER",-105,-75,600);
  text("-Aplicar flitros color: 123",-105,-60,605);
  text("-Para salir o entrar al menú pulsa ENTER",-80,-40,850);
  
  popMatrix();
}

void cameras(){
  float angle=0;
  float angle2=0;
  angle=map(mouseX,0,width,360,0);
  if(mouseY<height/4){
      angle2=map(height/4,0,height,360,0);
  }else if(mouseY>3*height/4){
    angle2=map(3*height/4,0,height,360,0);
  }else{
      angle2=map(mouseY,0,height,360,0);
  }

  PVector camPos= new PVector();
  camPos.x = radius*sin(radians(angle)) + sceneX;
  camPos.y =radius*sin(radians(angle2)) + sceneY;
  camPos.z = radius*cos(radians(angle)) + sceneZ;
  pushMatrix();
  rotateX(radians(-45));
  rotateY(radians(45));
  translate(0,0,700);
  popMatrix();
  camera(sceneX,sceneY,sceneZ,camPos.x, camPos.y,camPos.z,0,1,0);
  
  if(keys[0]){
    sceneZ+=3*cos(radians(angle));
    sceneX+=3*sin(radians(angle));
  }
    
  if(keys[1]){
    sceneZ-=3*cos(radians(angle));
    sceneX-=3*sin(radians(angle));
  }
    
  if(keys[2]){
    sceneZ+=3*cos(radians(angle+90));
    sceneX+=3*sin(radians(angle+90));

  }
    
  if(keys[3]){
    sceneZ-=3*cos(radians(angle+90));
    sceneX-=3*sin(radians(angle+90));

  }
    
  if(keys[4]){
    sceneY-=3;
  }
    
  if(keys[5]){
    sceneY+=3;
  }
}
void ligthsObjects(){
  if(menu){
       ambientLight(255,255,255);
  }else{
       ambientLight(30,30,30);
  }


  pushMatrix();
  translate(0,0,700);
  rotateZ(radians(180));
  float r,g,b;
      r= random(255);
      g= random(255);
      b= random(255);
  if(mousePressed){
    lightSpecular(r,g,b);
  }else{
    
    lightSpecular(colors[0],colors[1],colors[2]);
  }
  pushMatrix();
  translate(0,0,50);
  
  if(mousePressed){
    spotLight(r,g,b,0,80,0,0,-0.5,-0.5,radians(145),0.5);
  }else{
    
    spotLight(colors[0],colors[1],colors[2],-20,100,10,0,-0.5,-0.5,radians(145),8);
  }
  
  popMatrix();
  shape(s);
  translate(0,10,0);
  
  for(int i =-5; i<5;i++){
    for(int j= 0; j<5;j++){ 
      pushMatrix();
      translate(i*30-10,10+30*j,-120);
      shape(box);
      popMatrix();
    }
  }
   
  rotateX(radians(-90));
  pushMatrix();
  translate(-25,0,18);
  shape(p);
  popMatrix();
  popMatrix();
}

void keyReleased(){
  if(key=='w'){
     keys[0]=false;
  }
  if(key=='s'){
     keys[1]=false;
  }
  if(key=='a'){
     keys[2]=false;
  }
  if(key=='d'){
     keys[3]=false;
  }
  if(key==' '){
     keys[4]=false;
  }
  if(keyCode==SHIFT){
     keys[5]=false;
  }
}

void keyPressed(){
  if(key=='w'){
     keys[0]=true;
  }
  if(key=='s'){
     keys[1]=true;
  }
  if(key=='a'){
     keys[2]=true;
  }
  if(key=='d'){
     keys[3]=true;
  }
  if(key==' '){
     keys[4]=true;
  }
  if(keyCode==SHIFT){
     keys[5]=true;
  }
  
  if(key=='1'){
    if(colors[0]==255){
      colors[0]=0;
    }else{
      colors[0]=255;
    }
  }
  if(key=='2'){
    if(colors[1]==255){
      colors[1]=0;
    }else{
      colors[1]=255;
    }
  }
  
  if(key=='3'){
    if(colors[2]==255){
      colors[2]=0;
    }else{
      colors[2]=255;
    }
  }
  
  if(keyCode==ENTER){
    menu=!menu;
  }
  
}
