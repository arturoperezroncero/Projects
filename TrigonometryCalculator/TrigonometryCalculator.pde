import processing.sound.*;
SoundFile soundfile;

int posHelp=0;

String pri="";
String seg="";

int tran=255;
int tran2=255;

PImage info;
PImage help;
PImage cross;
PImage arrows,a,b,c,a2,b2,c2;

float relleno1=0;
float relleno2=255;
float pag=0;
int modeT=0;

int [] str;
int [] strC1;
int [] strC2;
int [] strC3;

int[] i;
int[] o;

ang1 A1;
ang2 A2;
ang3 A3;

fun1 F1;
fun2 F2;
fun3 F3;

lados L;

respuesta R;

String[] angR;
String[] senR;
String[] cosR;
String[] tgR;
String[] ladoR;

float[] angRN;
float[] senRN;
float[] cosRN;
float[] tgRN;
float[] ladoRN;
float[] respuestaRN;
boolean[] respuestaL;
float[] respuestaLsol;

boolean[] respuesta;

boolean[] demas;
float demasR;

void setup(){
  soundfile = new SoundFile(this, "music.mp3");
  soundfile.loop();
  soundfile.amp(0.2);
  info = loadImage("info.png");
  help = loadImage("help.png");
  cross = loadImage("cross.png");
  arrows = loadImage("arrows.png");
  
  a = loadImage("a.png");
  b = loadImage("b.png");
  c = loadImage("c.png");
  a2 = loadImage("a2.png");
  b2 = loadImage("b2.png");
  c2 = loadImage("c2.png");
  
  str = new int[16];
  strC1 = new int[16];
  strC2 = new int[16];
  strC3 = new int[16];
  for(int i=0;i<15;i++){
    strC1[i]=0;
    strC2[i]=0;
    strC3[i]=0;
  }
  i = new int[3];
  o = new int[5];
  
  angR = new String[3];
  senR = new String[3];
  cosR = new String[3];
  tgR = new String[3];
  ladoR = new String[3];
  
  angRN = new float[3];
  senRN = new float[3];
  cosRN = new float[3];
  tgRN = new float[3];
  ladoRN = new float[3];
  
  respuesta = new boolean[90];
  respuestaRN = new float[90];
  respuestaL = new boolean[41];
  respuestaLsol = new float[41];
  
  demas = new boolean[10];
  
  background(255);
  fullScreen();
  ang1="";
  A1 = new ang1();
  A2 = new ang2();
  A3 = new ang3();
  
  F1 = new fun1();
  F2 = new fun2();
  F3 = new fun3();
  
  L = new lados();
  
  R = new respuesta();
  
  i[0]=(width/4)+60;
  i[1]=((width/4)*2)+60;
  i[2]=((width/4)*3)+60;
  
  o[0]=(height/6);
  o[1]=((height/6)*2);
  o[2]=((height/6)*3);
  o[3]=((height/6)*4);
  o[4]=((height/6)*5);
}

void draw(){
  if(millis()<2500){
    tran=255;
  }else{
    tran-=0.05;
  }
  if(millis()<1000){
    tran=255;
  }else{
    tran2-=3;
  }

  background(255);
  
  if(pag<2){
  rectMode(CENTER);
  textAlign(CENTER);
  fill(relleno1);
  stroke(0);
  strokeWeight(1);
  rect((width/2)-20,height-20,40,40);
  textSize(25);
  textAlign(CENTER);
  fill(relleno2);
  text("1",(width/2)-20,height-10);
  if(mouseX>=(width/2)-40 && mouseX<=(width/2) && mouseY>=height-40 && mousePressed){
    relleno1=0;
    pag=0;
    relleno2=255;
  }
  if(pag==1){
    relleno2=0;
    relleno1=255;
  }
  
  rectMode(CENTER);
  fill(relleno2);
  strokeWeight(1);
  stroke(0);
  rect((width/2)+20,height-20,40,40);
  textSize(25);
  textAlign(CENTER);
  fill(relleno1);
  text("2",(width/2)+20,height-10);
  if(mouseX>=(width/2) && mouseX<=(width/2)+40 && mouseY>=height-40 && mousePressed){
    relleno2=0;
    pag=1;
    relleno1=255;
  }
  }
  if(pag==0){
    pri="";
    seg="";
    error=false;
    for(int i=0;i<40;i++){
      respuesta[i]=false;
  }
    strokeWeight(10);
    stroke(0);
    line(0,((height/6)*4)+65,width,((height/6)*4)+65);
  
    A1.caja();
    A1.teclado();
    
    A2.caja();
    A2.teclado();
    
    A3.caja();
    A3.teclado();
    
    F1.caja();
    F1.teclado();
    
    F2.caja();
    F2.teclado();
    
    F3.caja();
    F3.teclado();
    
    L.caja();
    L.teclado();
    
    for(int i=(width/4)+60; i<width; i+=width/4){
      for(int o=(height/6); o<height; o+=height/6){
        stroke(0);
        strokeWeight(5);
        line(i,o-5,i+20,o-5);
        line(i,o+5,i+20,o+5);
      }
    }
    for(int i=(width/4)+60; i<width; i+=width/4){
      for(int o=(height/6)*2; o<height-(height/6)*3; o+=height/6){
        stroke(0);
        strokeWeight(5);
        textAlign(CENTER);
        
        rectMode(CORNER);
        strokeWeight(1);
        text("cosec",i-170,o);
        rect(i-220,o-25,100,40);
      }
    }
    if(mouseX>=((width/4)+60)-220 && mouseX<=((width/4)+60)-120 && mouseY>=((height/6)*2)-25 && mouseY<=((height/6)*2)+15){
      strokeWeight(5);
      rect(((width/4)+60)-220,((height/6)*2)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[0]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    if(mouseX>=(((width/4)*2)+60)-220 && mouseX<=(((width/4)*2)+60)-120 && mouseY>=((height/6)*2)-25 && mouseY<=((height/6)*2)+15){
      strokeWeight(5);
      rect((((width/4)*2)+60)-220,((height/6)*2)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[1]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    if(mouseX>=(((width/4)*3)+60)-220 && mouseX<=(((width/4)*3)+60)-120 && mouseY>=((height/6)*2)-25 && mouseY<=((height/6)*2)+15){
      strokeWeight(5);
      rect((((width/4)*3)+60)-220,((height/6)*2)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[2]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    
    
    
    
    for(int i=(width/4)+60; i<width; i+=width/4){
      for(int o=(height/6)*3; o<height-(height/6)*2; o+=height/6){
        stroke(0);
        strokeWeight(5);
        textAlign(CENTER);
        
        rectMode(CORNER);
        strokeWeight(1);
        text("sec",i-170,o);
        rect(i-220,o-25,100,40);
      }
    }
    if(mouseX>=((width/4)+60)-220 && mouseX<=((width/4)+60)-120 && mouseY>=((height/6)*3)-25 && mouseY<=((height/6)*3)+15){
      strokeWeight(5);
      rect(((width/4)+60)-220,((height/6)*3)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[3]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    if(mouseX>=(((width/4)*2)+60)-220 && mouseX<=(((width/4)*2)+60)-120 && mouseY>=((height/6)*3)-25 && mouseY<=((height/6)*3)+15){
      strokeWeight(5);
      rect((((width/4)*2)+60)-220,((height/6)*3)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[4]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    if(mouseX>=(((width/4)*3)+60)-220 && mouseX<=(((width/4)*3)+60)-120 && mouseY>=((height/6)*3)-25 && mouseY<=((height/6)*3)+15){
      strokeWeight(5);
      rect((((width/4)*3)+60)-220,((height/6)*3)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[5]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    
    
    
    for(int i=(width/4)+60; i<width; i+=width/4){
      for(int o=(height/6)*4; o<height-(height/6); o+=height/6){
        stroke(0);
        strokeWeight(5);
        textAlign(CENTER);
        
        rectMode(CORNER);
        strokeWeight(1);
        text("cotg",i-170,o);
        rect(i-220,o-25,100,40);
      }
    }
    if(mouseX>=((width/4)+60)-220 && mouseX<=((width/4)+60)-120 && mouseY>=((height/6)*4)-25 && mouseY<=((height/6)*4)+15){
      strokeWeight(5);
      rect(((width/4)+60)-220,((height/6)*4)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[6]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    if(mouseX>=(((width/4)*2)+60)-220 && mouseX<=(((width/4)*2)+60)-120 && mouseY>=((height/6)*4)-25 && mouseY<=((height/6)*4)+15){
      strokeWeight(5);
      rect((((width/4)*2)+60)-220,((height/6)*4)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[7]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    if(mouseX>=(((width/4)*3)+60)-220 && mouseX<=(((width/4)*3)+60)-120 && mouseY>=((height/6)*4)-25 && mouseY<=((height/6)*4)+15){
      strokeWeight(5);
      rect((((width/4)*3)+60)-220,((height/6)*4)-25,100,40);
      if(mousePressed){
        pag=1;
        demas[8]=true;
      }else{
        if(pag==0){
          for(int i=0; i<10; i++){
          demas[i]=false;
        }
      }
    }
    }
    
    
    
    
    if(mouseX>=i[0]-5 && mouseX<=i[0]+25){
      if(mouseY>=o[0]-10 && mouseY<=o[0]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[0]-5,o[0]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[0],o[0]-5,i[0]+20,o[0]-5);
        line(i[0],o[0]+5,i[0]+20,o[0]+5);
        
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          A1.answer();
      }else{
        strC1[0]=0;
        strC1[3]=0;
        strC1[4]=0;
        strC1[5]=0;
      }
      }
      if(mouseY>=o[1]-10 && mouseY<=o[1]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[0]-5,o[1]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[0],o[1]-5,i[0]+20,o[1]-5);
        line(i[0],o[1]+5,i[0]+20,o[1]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F1.answer1();
      }else{
        strC1[0]=0;
        strC1[3]=0;
        strC1[4]=0;
        strC1[5]=0;
      }
        }
      
      if(mouseY>=o[2]-10 && mouseY<=o[2]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[0]-5,o[2]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[0],o[2]-5,i[0]+20,o[2]-5);
        line(i[0],o[2]+5,i[0]+20,o[2]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F1.answer2();
      }else{
        strC1[0]=0;
        strC1[3]=0;
        strC1[4]=0;
        strC1[5]=0;
      }
      }
      if(mouseY>=o[3]-10 && mouseY<=o[3]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[0]-5,o[3]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[0],o[3]-5,i[0]+20,o[3]-5);
        line(i[0],o[3]+5,i[0]+20,o[3]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F1.answer3();
      }else{
        strC1[0]=0;
        strC1[3]=0;
        strC1[4]=0;
        strC1[5]=0;
      }
      }
      if(mouseY>=o[4]-10 && mouseY<=o[4]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[0]-5,o[4]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[0],o[4]-5,i[0]+20,o[4]-5);
        line(i[0],o[4]+5,i[0]+20,o[4]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
            L.answer1();
          }else{
            strC1[0]=0;
            strC1[1]=0;
            strC1[2]=0;
        strC1[12]=0;
        strC1[13]=0;
        strC1[14]=0;
      }
      }
    }
    if(mouseX>=i[1]-5 && mouseX<=i[1]+25){
      if(mouseY>=o[0]-10 && mouseY<=o[0]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[1]-5,o[0]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[1],o[0]-5,i[1]+20,o[0]-5);
        line(i[1],o[0]+5,i[1]+20,o[0]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          A2.answer();
      }else{
        strC1[1]=0;
        strC1[6]=0;
        strC1[7]=0;
        strC1[8]=0;
      }
      }
      if(mouseY>=o[1]-10 && mouseY<=o[1]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[1]-5,o[1]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[1],o[1]-5,i[1]+20,o[1]-5);
        line(i[1],o[1]+5,i[1]+20,o[1]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F2.answer1();
      }else{
        strC1[1]=0;
        strC1[6]=0;
        strC1[7]=0;
        strC1[8]=0;
      }
      }
      if(mouseY>=o[2]-10 && mouseY<=o[2]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[1]-5,o[2]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[1],o[2]-5,i[1]+20,o[2]-5);
        line(i[1],o[2]+5,i[1]+20,o[2]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F2.answer2();
      }else{
        strC1[1]=0;
        strC1[6]=0;
        strC1[7]=0;
        strC1[8]=0;
      }
      }
      if(mouseY>=o[3]-10 && mouseY<=o[3]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[1]-5,o[3]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[1],o[3]-5,i[1]+20,o[3]-5);
        line(i[1],o[3]+5,i[1]+20,o[3]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F2.answer3();
      }else{
        strC1[1]=0;
        strC1[6]=0;
        strC1[7]=0;
        strC1[8]=0;
      }
      }
      if(mouseY>=o[4]-10 && mouseY<=o[4]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[1]-5,o[4]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[1],o[4]-5,i[1]+20,o[4]-5);
        line(i[1],o[4]+5,i[1]+20,o[4]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
            L.answer2();
          }else{
        strC1[12]=0;
        strC1[13]=0;
        strC1[14]=0;
        strC1[0]=0;
            strC1[1]=0;
            strC1[2]=0;
      }
      }
    }
    if(mouseX>=i[2]-5 && mouseX<=i[2]+25){
      if(mouseY>=o[0]-10 && mouseY<=o[0]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[2]-5,o[0]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[2],o[0]-5,i[2]+20,o[0]-5);
        line(i[2],o[0]+5,i[2]+20,o[0]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          A3.answer();
        }else{
        strC1[2]=0;
        strC1[9]=0;
        strC1[10]=0;
        strC1[11]=0;
      }
      }
      if(mouseY>=o[1]-10 && mouseY<=o[1]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[2]-5,o[1]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[2],o[1]-5,i[2]+20,o[1]-5);
        line(i[2],o[1]+5,i[2]+20,o[1]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F3.answer1();
      }else{
        strC1[2]=0;
        strC1[9]=0;
        strC1[10]=0;
        strC1[11]=0;
      }
      }
      if(mouseY>=o[2]-10 && mouseY<=o[2]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[2]-5,o[2]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[2],o[2]-5,i[2]+20,o[2]-5);
        line(i[2],o[2]+5,i[2]+20,o[2]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F3.answer2();
      }else{
        strC1[2]=0;
        strC1[9]=0;
        strC1[10]=0;
        strC1[11]=0;
      }
      }
      if(mouseY>=o[3]-10 && mouseY<=o[3]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[2]-5,o[3]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[2],o[3]-5,i[2]+20,o[3]-5);
        line(i[2],o[3]+5,i[2]+20,o[3]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
          F3.answer3();
      }else{
        strC1[2]=0;
        strC1[9]=0;
        strC1[10]=0;
        strC1[11]=0;
      }
      }
      if(mouseY>=o[4]-10 && mouseY<=o[4]+10){
        fill(0);
        noStroke();
        rectMode(CORNER);
        rect(i[2]-5,o[4]-10,31,21);
        
        stroke(255);
        strokeWeight(5);
        line(i[2],o[4]-5,i[2]+20,o[4]-5);
        line(i[2],o[4]+5,i[2]+20,o[4]+5);
        if(mousePressed){
          for(int i=0;i<40;i++){
            respuestaL[i]=false;
          }
          for(int i=0;i<40;i++){
            respuesta[i]=false;
          }
            L.answer3();
          }else{
        strC1[12]=0;
        strC1[13]=0;
        strC1[14]=0;
        strC1[0]=0;
            strC1[1]=0;
            strC1[2]=0;
      }
      }
    }
  }
  if(pag==1){
    R.num();
    R.rep();
  }
  fill(0,0,0,tran);
  noStroke();
  rect(0,0,4000,4000);
  
  fill(255,tran2);
  textSize(50);
  text("Desarrollado por",width/2,(height/2)-50);
  text("Arturo Pérez Roncero",width/2,(height/2)+50);
  
  if(pag==0 || pag==1){
    if((mouseX>(width/15)-50 && mouseX<(width/15)+50 && mouseY>50 && mouseY<150)|| (mouseX>=(width/2) && mouseX<=(width/2)+40 && mouseY>=height-40) 
    || (mouseX>=(width/2)-40 && mouseX<=(width/2) && mouseY>=height-40) || mouseX<=(width/4)+200 && mouseX>=(width/4)+120 && mouseY>=height-80 
    || mouseX<=(width/4)+40 && mouseX>=(width/4)-40 && mouseY>=height-80 || mouseX>=(width/4)-200 && mouseX<=(width/4)-120 && mouseY>=height-80){
      cursor(HAND);
  }else{
    cursor(ARROW);
  }
  }
    if(millis()>6000){
    if(pag==0){
    imageMode(CENTER);
    tint(255,255-tran2-1000);
    info.resize(50,50);
    image(info,width/15,100);
    if(mouseX>(width/15)-50 && mouseX<(width/15)+50 && mouseY>50 && mouseY<150 && mousePressed){
      pag=2;
  }
    }
    
    if(pag==2){
    cursor(HAND);
    
    imageMode(CORNER);
    stroke(255,0,0);
    strokeWeight(10);
    
    noTint();
    imageMode(CORNER);
    image(help,-100,posHelp);
    
    imageMode(CORNER);
    tint(0);
    image(cross,width-100,50);
    if(mouseX>width-200 && mouseX<width-50 && mouseY>50 && mouseY<200 && mousePressed){
      pag=0;
      posHelp=0;
  }
    imageMode(CENTER);
    tint(0);
    image(arrows,width-75,height/2);
    if(mouseX>(width-125) && mouseX<width-25){
      if(mouseY>(height/2)-200 && mouseY<height/2 && mousePressed && posHelp<0){
        posHelp+=3;
    }
    if(mouseY<(height/2)+200 && mouseY>height/2 && mousePressed && posHelp>-2400){
        posHelp-=3;
    }
    }
  }
  
  if(pag<1){
    if(modeT==0){
    imageMode(CENTER);
    image(a2,(width/4)-160,height-40);
    image(b,(width/4),height-40);
    image(c,(width/4)+160,height-40);
    imageMode(CORNER);
  }
  if(modeT==1){
    imageMode(CENTER);
    image(a,(width/4)-160,height-40);
    image(b2,(width/4),height-40);
    image(c,(width/4)+160,height-40);
    imageMode(CORNER);
  }
  if(modeT==2){
    tint(255,255-tran2-1000);
    imageMode(CENTER);
    image(a,(width/4)-160,height-40);
    image(b,(width/4),height-40);
    image(c2,(width/4)+160,height-40);
    imageMode(CORNER);
  }
  
  if(mouseX>=(width/4)-200 && mouseX<=(width/4)-120 && mouseY>=height-80){
    if(mousePressed){
      modeT=0;
    }
  }
  if(mouseX<=(width/4)+40 && mouseX>=(width/4)-40 && mouseY>=height-80){
    if(mousePressed){
      modeT=1;
    }
  }
  if(mouseX<=(width/4)+200 && mouseX>=(width/4)+120 && mouseY>=height-80){
    if(mousePressed){
      modeT=2;
    }
  }
  }
    }
}