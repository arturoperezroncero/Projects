import processing.sound.*;

javi[] javis = new javi[2];

SoundFile soundfile;
SoundFile song;

float lol1, lol2, lol3, peke1, peke2, peke3;
float xball, yball, bvel,x,y;
float xballmalo, yballmalo, bvelmalo,xmalo,ymalo,xrep,yrep;
float col1,col2,col3;
float sioq=0;
float yesorwat=0;
int punt = 4;
float dific1;
float dific2;
float show;
float show2;
PImage wow;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage javiPlay;

float fx,fy;
float showplay1,showplay2,showplay3;

boolean pausa1,pausa2,pos1,pos2,pos3,pos4;

void setup(){ 
  soundfile = new SoundFile(this, "pumoof.mp3");
  song = new SoundFile(this, "If_I_Had_a_Chicken.mp3");
  song.loop();
  fullScreen();
  for (int i = 0; i < javis.length; i++) {
    javis[i] = new javi();
  }
  
  wow = loadImage("sebas1.png");
  img2 = loadImage("sebas2.png");
  img3 = loadImage("sebas3.png");
  img4 = loadImage("francotirador.png");
  img5 = loadImage("javi.png");
  img6 = loadImage("sebas mini.png");
  javiPlay = loadImage("play javi.png");
  //size(360,540);
  show=0;
  show2=255;
  dific1=5+punt/5;
  dific2=7+punt/5;
  xball=0;
  yball=random (height/15,height/15*14);
  xballmalo=0;
  yballmalo=random (height/15,height/15*14);
  xballmalo=width;
  yballmalo=random (height/15,height/15*14);
  col1 = random (0,200);
  col2 = random (0,200);
  col3 = random (0,200);
  bvel = random(dific1,dific2);
  
  pausa1=false;
  pausa2=false;
  }

void draw (){ 
  println(sioq);
  dific1=5+punt/5;
  dific2=7+punt/5;
  translate(0,0);
  background(col1,col2,col3);
  textSize(100);
  fill(showplay1,showplay2,showplay3);
  textAlign(CENTER, CENTER);
  text("PLAY",width/2,height/10*8);
  
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(255);
  text(punt,width/2,height/5);
    
  noStroke ();
  fill(col1,col2,col3);
  //fill(255);
  ellipse (xball, yball,50,50);
  if (xball>=width){
    textSize(130);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Game Over", width/2,height/2);
    xball=width*2;
    xrep=width*2;
    xballmalo=-width*2;
    show=255;
    show2=0;
    if(sioq>0){
      imageMode(CENTER);
      javiPlay.resize(255,99);
      image(javiPlay,width/2,height/10*8);
    }
    if(mouseY>height/10*7 && mousePressed && mouseX > width/2-width/10*3 && mouseX < width/2+width/10*3){
      xball=0;
      yball=random (height/15,height/15*14);
      xballmalo=0;
      yballmalo=random (height/15,height/15*14);
      xrep=width;
      yrep=random (height/15,height/15*14);
      dific1=5+punt/5;
      dific2=7+punt/5;
      bvel = random(dific1,dific2);
      show=0;
      show2=255;
      punt=0;
    }
 
    }else{
      xball+=bvel;
    }
  if(xball > fx-75 && xball < fx+75 && yball > fy-75 && yball < fy+75){
    xball = 0;
    yball=random (height/15,height/15*14);
    bvel=random(dific1,dific2);
    punt++;
    soundfile.play();
  }
  
  noStroke ();
  fill(col1,col2,col3);
  //fill(255);
  ellipse (xrep, yrep,50,50);
  if (xrep<=0){
    xrep = width;
    yrep=random (height/15,height/15*14);
    bvel=random(dific1,dific2);
    punt-=5;
    }else{
      xrep-=bvel;
    }
  if(xrep > fx-75 && xrep < fx+75 && yrep > fy-75 && yrep < fy+75){
    xrep = width;
    yrep=random (height/15,height/15*14);
    bvel=random(dific1,dific2);
    punt++;
    soundfile.play();
  }
   
  noStroke ();
  fill(col1,col2,col3);
  //fill(255,0,0);
  ellipse (xballmalo, yballmalo,50,50);
  if(xball==xballmalo+-25 && yball==yballmalo+-25){
    yballmalo=random(height/15,height/15*14);
    xballmalo=0;
  }
  if (xballmalo>=width){
    xballmalo = 0;
    yballmalo=random (height/15,height/15*14);
    bvel=random(dific1,dific2);
    punt++;
 }
  if(xballmalo > fx-75 && xballmalo < fx+75 && yballmalo > fy-75 && yballmalo < fy+75){   
    textSize(130);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Game Over", width/2,height/2);
    xball=width*2;
    xrep=width*2;
    xballmalo=-width*2;
    show=255;
    show2=0;
    if(mouseY>height/10*7 && mousePressed && mouseX > width/2-width/10*3 && mouseX < width/2+width/10*3){
      xball=0;
      yball=random (height/15,height/15*14);
      xballmalo=0;
      yballmalo=random (height/15,height/15*14);
      xrep=width;
      yrep=random (height/15,height/15*14);
      dific1=5+punt/5;
      dific2=7+punt/5;
      bvel = random(dific1,dific2);
      show=0;
      show2=255;
      punt=0;
    }
  } else{
    xballmalo+=bvel;
  }
  
  for (int i = 0; i < javis.length; i++) {
  javis[i].how();
  }
  
  imageMode(CENTER);
  image(wow,xball,yball);
  
  imageMode(CENTER);
  image(img2,xballmalo,yballmalo);
  
  imageMode(CENTER);
  image(img3,xrep,yrep);
  
  if(mousePressed){
    fx=mouseX;
    fy=mouseY;
   imageMode(CENTER);
   img4.resize(200,200);
   image(img4,fx,fy);
   } else {
     fx=width*2;
     fy=0;
     image(img4,fx,fy);
   }
  
  //fill(255);
  //ellipse(mouseX,mouseY,150,150);
  
  stroke(255);
  strokeWeight(2);
  fill(0);
  rect(width-110,0,50,50);
  if(mouseX>=width-110 && mouseY<=50 && mousePressed){
    sioq=0;
  }
  
  stroke(255);
  strokeWeight(2);
  fill(0);
  rect(width-50,0,50,50);
  if(mouseX>=width-50 && mouseY<=50 && mousePressed){
    sioq=1;
  }
  
  if(sioq==0){
    imageMode(CORNER);
    img6.resize(35,45);
    image(img6,width-102,2.5);
  }else{
    imageMode(CORNER);
    img5.resize(35,45);
    image(img5,width-42,2.5);
  } 
  if(mouseX>width/10-30){
    pos1=true;
  }else{
    pos1=false;
  }
  
  if(mouseX<width/10+50+30){
    pos2=true;
  }else{
    pos2=false;
  }
  
  if(mouseY>width/10-30){
    pos3=true;
  }else{
    pos3=false;
  }
  
  if(mouseY<width/10+50+30){
    pos4=true;
  }else{
    pos4=false;
  }
  
  if(mouseX>width/10-30 && mouseX<width/10+50+30 && mouseY>width/10-30 && mouseY<width/10+50+30 && pausa2==false){
    pausa1=true;
  }else{
    pausa1=false;
  }
  
  if(pausa1==false){
    bvel=random(dific1,dific2);
    noStroke();
    fill(255);
    rect(width/10,width/10,20,50);
  
    noStroke();
    fill(255);
    rect(width/10+30,width/10,20,50);
  }
  if(pausa1==true){
    noStroke();
    fill(255);
    triangle(width/10,(width/10)-5,width/10,(width/10)+55,(width/10)+50,(width/10)+25);
    bvel=0;
  }
}
