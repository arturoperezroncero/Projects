int mode,x,answer,min,sec,intro,vf,xf,finale,finalA,fill1a,fill2a,fill3a,fill4a,fill5a,fill6a,fill1b,fill2b,fill3b,fill4b,fill5b,fill6b,slide,fon;
PFont font,font2,font3;
boolean m1,m2,m3,swipeL,swipeR,AS,AB,BS,BB,CS,CB,DS,DB,ASm,ABm,BSm,BBm,CSm,CBm,DSm,DBm,tr1,tr2,tr3,tr4,fJKw,fJKl,fCISw,fCISl,fCAw,fCAl,fFw,fFl,flechasNo,respuestaGradual,swipe,fast,normal,slow;
float indice,cancion,a,b,c,d,col1,col2,col3,col4,col5,col6,col7,col8,trans1,trans2,trans3,trans4,per,fondo,res,der,iz,JK,force,CA,droids,d1s,d2s,d3s,d4s,d1b,d2b,d3b,d4b;
PImage upb,ups,downb,downs,b1,b2,b3,b4,b5,b6,b7,b8,
rayo,barra,arturox,santix,javix,sebasx,danix,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17,f18;
PImage l501st,l327th,l442nd,shocktrooper,phase1,phase2,ahsoka,amidala,bane,boba,bossNass,c3po,chewbacca,cody,emperor,fisto,gamorrean,grievous,imperial,jango,jarjar,maul,
newOrder,obiWan,quiGon,r2d2,sebulba,senatorial,shaakTi,stormtrooper2,tusken,vader,watto,yoda,CIS,cloneArmy,jediCouncil,force1,force2,yobama,finger,exit;

void setup(){
  fullScreen();
  //size(720,1280);
  //size(360,640);
  
  if(pixelDensity>1){
    mode=5;
  }
  respuestaGradual=true;
  swipe=true;
  m1=true;
  m2=false;
  m3=false;
  
  fill1a=1;
  fill2a=-1;
  fill3a=-1;
  
  fill4a=-1;
  fill5a=1;
  fill6a=-1;
  
  fast=false;
  normal=true;
  slow=false;
  
  d1s=0.4;
  d1b=0.5;
  
  d2s=0.4;
  d2b=0.5;
  
  d3s=0.4;
  d3b=0.5;
  
  d4s=0.4;
  d4b=0.5;
  
  background(0);
  vf=10;
  xf=width/2;
  //ma = new SoundFile(this, "m0.mp3");
  //mb = new SoundFile(this, "m1.mp3");
  //mc = new SoundFile(this, "m2.mp3");
  //md = new SoundFile(this, "m3.mp3");
  //me = new SoundFile(this, "m4.mp3");
  //mf = new SoundFile(this, "m5.mp3");
  //mg = new SoundFile(this, "m6.mp3");
  //mh = new SoundFile(this, "m7.mp3");
  //mi = new SoundFile(this, "m8.mp3");
  //mj = new SoundFile(this, "m9.mp3");
  //mk = new SoundFile(this, "m10.mp3");
  //ml = new SoundFile(this, "m11.mp3");
  //mm = new SoundFile(this, "m12.mp3");
  //mn = new SoundFile(this, "m13.mp3");
  //mo = new SoundFile(this, "m14.mp3");
  //mp = new SoundFile(this, "m15.mp3");
  //mq = new SoundFile(this, "m16.mp3");
  //mr = new SoundFile(this, "m17.mp3");
  //ms = new SoundFile(this, "m18.mp3");
  //mt = new SoundFile(this, "m19.mp3");
  
  orientation(PORTRAIT);
  cancion=int(random(0,19));
  per=int(random(0,29));
  res=int(random(0,4));
  fondo=int(random(1,19));
  JK=120;
  force=120;
  CA=120;
  droids=120;
  
  font = loadFont("AgencyFB-Bold-48.vlw");
  font2 = loadFont("AgencyFB-Bold-60.vlw");
  font3 = loadFont("AgencyFB-Bold-80.vlw");
  textFont(font);
  
  cloneArmy = loadImage("cloneArmy.png");
  jediCouncil = loadImage("jediCouncil.png");
  CIS = loadImage("CIS.png");
  force2 = loadImage("force2.png");
  force1 = loadImage("force1.png");
  
  upb = loadImage("upB.png");
  ups = loadImage("upS.png");
  downb = loadImage("downB.png");
  downs = loadImage("downS.png");
  barra = loadImage("barra.png");
  
  l501st = loadImage("l501st.png");
  l327th = loadImage("l327th.png");
  l442nd = loadImage("l442nd.png");
  shocktrooper = loadImage("shocktrooper.png");
  phase1 = loadImage("phase1.png");
  phase2 = loadImage("phase2.png");
  ahsoka = loadImage("ahsoka.png");
  amidala = loadImage("amidala.png");
  bane = loadImage("bane.png");
  boba = loadImage("boba.png");
  bossNass = loadImage("bossNass.png");
  c3po = loadImage("c3po.png");
  chewbacca = loadImage("chewbacca.png");
  cody = loadImage("cody.png");
  emperor = loadImage("emperor.png");
  fisto = loadImage("fisto.png");
  gamorrean = loadImage("gamorrean.png");
  grievous = loadImage("grievous.png");
  imperial = loadImage("imperial.png");
  jango = loadImage("jango.png");
  jarjar = loadImage("jarjar.png");
  maul = loadImage("maul.png");
  newOrder = loadImage("newOrder.png");
  obiWan = loadImage("obiWan.png");
  quiGon = loadImage("quiGon.png");
  r2d2 = loadImage("r2d2.png");
  sebulba = loadImage("sebulba.png");
  senatorial = loadImage("senatorial.png");
  shaakTi = loadImage("shaakTi.png");
  stormtrooper2 = loadImage("stormtrooper2.png");
  tusken = loadImage("tusken.png");
  vader = loadImage("vader.png");
  watto = loadImage("watto.png");
  yoda = loadImage("yoda.png");
  yobama = loadImage("yobama.png");
  finger = loadImage("finger.png");
  exit = loadImage("exit.png");
  
    if(fondo==1){
    f1 = loadImage("lol1.png");
    }if(fondo==2){
    f2 = loadImage("lol2.png");
    }if(fondo==3){
    f3 = loadImage("lol3.png");
    }if(fondo==4){
    f4 = loadImage("lol4.png");
    }if(fondo==5){
    f5 = loadImage("lol5.png");
    }if(fondo==6){
    f6 = loadImage("lol6.png");
    }if(fondo==7){
    f7 = loadImage("lol7.png");
    }if(fondo==8){
    f8 = loadImage("lol8.png");
    }if(fondo==9){
    f9 = loadImage("lol9.png");
    }if(fondo==10){
    f10 = loadImage("lol10.png");
    }if(fondo==11){
    f11 = loadImage("lol11.png");
    }if(fondo==12){
    f12 = loadImage("lol12.png");
    }if(fondo==13){
    f13 = loadImage("lol13.png");
    }if(fondo==14){
    f14 = loadImage("lol14.png");
    }if(fondo==15){
    f15 = loadImage("lol15.png");
    }if(fondo==16){
    f16 = loadImage("lol16.png");
    }if(fondo==17){
    f17 = loadImage("lol17.png");
    }if(fondo==18){
    f18 = loadImage("lol18.png");
    }
  
  b1 = loadImage("boton1.png");
  b2 = loadImage("boton2.png");
  b3 = loadImage("boton3.png");
  b4 = loadImage("boton4.png");
  b5 = loadImage("boton5.png");
  b6 = loadImage("boton6.png");
  b7 = loadImage("boton7.png");
  b8 = loadImage("boton8.png");
  
  min=minute();
  sec=second();
}

void draw(){
  if(mode==5){
    if(slide==0){
    background(255);
    fill(0);
    textAlign(CENTER);
    textSize(80);
    textFont(font3);
    text("Sorry, your screen's",width/2,height/6);
    text("resolution is not 720x1280,",width/2,(height/6)*2);
    text("and will leave this app",width/2,(height/6)*3);
    text("deformed and scarred",width/2,(height/6)*4);
    
    textSize(50);
    fill(0);
    textFont(font);
    text("Whatever...",(width/4)*1,(height/6)*5);
    
    text("What can I do?",(width/4)*3,(height/6)*5);
    }
  }
  if(fast==true){
    indice=(400/frameRate);
  }
  if(normal==true){
    indice=(100/frameRate);
  }
  if(slow==true){
    indice=(50/frameRate);
  }
  if(mode==0){
    imageMode(CENTER);
    if(fondo==1){
    image(f1,width/2,height/2);
    }if(fondo==2){
    image(f2,width/2,height/2);
    }if(fondo==3){
    image(f3,width/2,height/2);
    }if(fondo==4){
    image(f4,width/2,height/2);
    }if(fondo==5){
    image(f5,width/2,height/2);
    }if(fondo==6){
    image(f6,width/2,height/2);
    }if(fondo==7){
    image(f7,width/2,height/2);
    }if(fondo==8){
    image(f8,width/2,height/2);
    }if(fondo==9){
    image(f9,width/2,height/2);
    }if(fondo==10){
    image(f10,width/2,height/2);
    }if(fondo==11){
    image(f11,width/2,height/2);
    }if(fondo==12){
    image(f12,width/2,height/2);
    }if(fondo==13){
    image(f13,width/2,height/2);
    }if(fondo==14){
    image(f14,width/2,height/2);
    }if(fondo==15){
    image(f15,width/2,height/2);
    }if(fondo==16){
    image(f16,width/2,height/2);
    }if(fondo==17){
    image(f17,width/2,height/2);
    }if(fondo==18){
    image(f18,width/2,height/2);
    }
    
    if(mousePressed && (mouseX>(width/2)-180) && (mouseX<(width/2)+180) && (mouseY>(height/2)-150) && (mouseY<(height/2)+150)){
    imageMode(CENTER);
    image(b2,width/2,height/2);
    }else{
    imageMode(CENTER);
    image(b1,width/2,height/2);
    }
    if(mousePressed && (mouseX>(width/2)-155) && (mouseX<(width/2)+155) && (mouseY>((height/4))-115) && (mouseY<((height/4))+115)){
    imageMode(CENTER);
    image(b6,width/2,((height/4)));
    }else{
    imageMode(CENTER);
    image(b5,width/2,((height/4)));
    }
    if(mousePressed && (mouseX>(width/2)-155) && (mouseX<(width/2)+155) && (mouseY>((height/4)*3)-115) && (mouseY<((height/4)*3)+115)){
    imageMode(CENTER);
    image(b8,width/2,((height/4)*3));
    }else{
    imageMode(CENTER);
    image(b7,width/2,((height/4)*3));
    }
    textAlign(CENTER);
  }
  der=map(mouseX,width/2,width,0,255);
  iz=map(mouseX,0,width/2,255,0);
  //songs();
  if(JK>200){
    force=100;
    CA=100;
    droids=100;
  }if(force>200){
    JK=100;
    CA=100;
    droids=100;
  }if(CA>200){
    force=100;
    JK=100;
    droids=100;
  }if(droids>200){
    force=100;
    CA=100;
    JK=100;
  }
  if(JK<0){
    force=100;
    CA=100;
    droids=100;
  }if(force<0){
    JK=100;
    CA=100;
    droids=100;
  }if(CA<0){
    force=100;
    JK=100;
    droids=100;
  }if(droids<0){
    force=100;
    CA=100;
    JK=100;
  }
  if(mode==2){
    background(0);
    
    if(JK>200){
    fJKw=true;
  }if(JK<0){
    fJKl=true;
  }
  
    if(force>200){
    fFw=true;
  }if(force<0){
    fFl=true;
  }
  
  if(CA>200){
    fCAw=true;
  }if(CA<0){
    fCAl=true;
  }
  
  if(droids>200){
    fCISw=true;
  }if(droids<0){
    fCISl=true;
  }
  
  JK=120;
  force=120;
  CA=120;
  droids=120;
  
  fill(255);
  textAlign(CENTER);
  finales();
  finale();
  
  if(mousePressed && (mouseX>(width/2)-200) && (mouseX<(width/2)+200) && (mouseY>(height)-600) && (mouseY<(height)-200)){
    imageMode(CENTER);
    image(b4,width/2,height-400);
    }else{
    imageMode(CENTER);
    image(b3,width/2,height-400);
    }
  }
  
  if((swipeL==false)&&(swipeR==false)){
    answer=0;
  }
  
  a=map(JK,0,200,0,160);
  b=map(force,0,200,0,150);
  c=map(CA,0,200,0,160);
  d=map(droids,0,200,0,160);
  
  col2=map(CA,0,200,0,255);
  col1=map(CA,0,200,255,0);
  
  col4=map(droids,0,200,0,255);
  col3=map(droids,0,200,255,0);
  
  col6=map(JK,0,200,0,255);
  col5=map(JK,0,200,255,0);
  
  col8=map(force,0,200,0,255);
  col7=map(force,0,200,255,0);
 
  if(mode==1){
    textAlign(CENTER);
    if(JK>200){
    mode=2;
  }if(JK<0){
    mode=2;
  }
  
    if(force>200){
    mode=2;
  }if(force<0){
    mode=2;
  }
  
  if(CA>200){
    mode=2;
  }if(CA<0){
    mode=2;
  }
  
  if(droids>200){
    mode=2;
  }if(droids<0){
    mode=2;
  }
    background(175);
    
    if(flechasNo==false){
    flechas();
    }
    textAlign(CENTER);
    icons();
    consequencias();
    textos();
    
    if(swipeL==true){
        swipeR=false;
        x-=70;
        if(x<-250){
          per=int(random(0,29));
          res=int(random(0,4));
          x=0;
          swipeL=false;
        }
    }
    if(swipeR==true){
        swipeL=false;
        x+=70;
        if(x>width+250){
          per=int(random(0,29));
          res=int(random(0,4));
          x=0;
          swipeR=false;
        }
    }
    if(mousePressed){
    if(mouseY<((height/3)*2)&&mouseY>(height/3)){
      if((mouseX>(width/10))&&(mouseX<(width/10)*9)){
        der=map(mouseX,width/2,width,0,255);
        iz=map(mouseX,0,width/2,255,0);
        x=mouseX;
      }
    }if(mouseX>width/2){
      textAlign(CENTER);
        respuestaR();
        der=map(mouseX,width/2,width,0,255);
        iz=map(mouseX,0,width/2,255,0);
      }if(mouseX<width/2){
        textAlign(CENTER);
        respuestaL();
        der=map(mouseX,width/2,width,0,255);
        iz=map(mouseX,0,width/2,255,0);
      }
    }else if((swipeL==false)&&(swipeR==false)){
      x=width/2;
      der=map(mouseX,width/2,width,0,255);
      iz=map(mouseX,0,width/2,255,0);
    }

    if(per==0){
      if(swipe==true){
      image(l501st,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(l501st,x,(height/2)+50);
        }
      }
      fill(255);
      text("501st LEGION",width/2,(height/3));
    }
    if(per==1){
      if(swipe==true){
      image(l327th,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(l327th,x,(height/2)+50);
        }
      }
      fill(255);
      text("327th LEGION",width/2,(height/3));
    }
    if(per==2){
      if(swipe==true){
      image(l442nd,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(l442nd,x,(height/2)+50);
        }
      }
      fill(255);
      text("442nd LEGION",width/2,(height/3));
    }
    if(per==3){
      if(swipe==true){
      image(shocktrooper,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(shocktrooper,x,(height/2)+50);
        }
      }
      fill(255);
      text("SHOCKTROOPER",width/2,(height/3));
    }
    if(per==4){
      if(swipe==true){
      image(phase1,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(phase1,x,(height/2)+50);
        }
      }
      fill(255);
      text("PHASE 1 CLONE TROOPER",width/2,(height/3));
    }
    if(per==5){
      if(swipe==true){
      image(phase2,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(phase2,x,(height/2)+50);
        }
      }
      fill(255);
      text("PHASE 2 CLONE TROOPER",width/2,(height/3));
    }
    if(per==6){
      if(swipe==true){
      image(ahsoka,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(ahsoka,x,(height/2)+50);
        }
      }
      fill(255);
      text("AHSOKA",width/2,(height/3));
    }
    if(per==7){
      if(swipe==true){
      image(amidala,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(amidala,x,(height/2)+50);
        }
      }
      fill(255);
      text("PADME AMIDALA",width/2,(height/3));
    }
    if(per==8){
      if(swipe==true){
      image(bane,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(bane,x,(height/2)+50);
        }
      }
      fill(255);
      text("CAD BANE",width/2,(height/3));
    }
    if(per==9){
      if(swipe==true){
      image(boba,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(boba,x,(height/2)+50);
        }
      }
      fill(255);
      text("BOBA FETT",width/2,(height/3));
    }
    if(per==10){
      if(swipe==true){
      image(bossNass,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(bossNass,x,(height/2)+50);
        }
      }
      fill(255);
      text("BOSS NASS",width/2,(height/3));
    }
    if(per==11){
      if(swipe==true){
      image(c3po,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(c3po,x,(height/2)+50);
        }
      }
      fill(255);
      text("C3P0",width/2,(height/3));
    }
    if(per==12){
      if(swipe==true){
      image(chewbacca,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(chewbacca,x,(height/2)+50);
        }
      }
      fill(255);
      text("CHEWBACCA",width/2,(height/3));
    }
    if(per==13){
      if(swipe==true){
      image(cody,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(cody,x,(height/2)+50);
        }
      }
      fill(255);
      text("COMMANDER 'CODY'",width/2,(height/3));
    }
    if(per==14){
      if(swipe==true){
      image(emperor,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(emperor,x,(height/2)+50);
        }
      }
      fill(255);
      text("PALPATINE",width/2,(height/3));
    }
    if(per==15){
      if(swipe==true){
      image(fisto,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(fisto,x,(height/2)+50);
        }
      }
      fill(255);
      text("KIT FISTO",width/2,(height/3));
    }
    if(per==16){
      if(swipe==true){
      image(gamorrean,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(gamorrean,x,(height/2)+50);
        }
      }
      fill(255);
      text("GAMORREAN GUARD",width/2,(height/3));
    }
    if(per==17){
      if(swipe==true){
      image(grievous,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(grievous,x,(height/2)+50);
        }
      }
      fill(255);
      text("GENERAL GRIEVOUS",width/2,(height/3));
    }
    if(per==18){
      if(res==0){
        if(swipe==true){
          image(yobama,x,(height/2)+50);
          }else{
          if(swipeR==true || swipeL==true){
            }else{
            image(yobama,x,(height/2)+50);
            }
        }
        fill(255);
        text("YOBAMA",width/2,(height/3));
      }else{
        if(swipe==true){
          image(yoda,x,(height/2)+50);
        }else{
          if(swipeR==true || swipeL==true){
        }else{
          image(yoda,x,(height/2)+50);
        }
      }
        fill(255);
      text("YODA",width/2,(height/3));
      }
    }
    if(per==19){
      if(swipe==true){
      image(jarjar,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(jarjar,x,(height/2)+50);
        }
      }
      fill(255);
      text("JAR JAR",width/2,(height/3));
    }
    if(per==20){
      if(swipe==true){
      image(maul,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(maul,x,(height/2)+50);
        }
      }
      fill(255);
      text("DARTH MAUL",width/2,(height/3));
    }
    if(per==21){
      if(swipe==true){
      image(obiWan,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(obiWan,x,(height/2)+50);
        }
      }
      fill(255);
      text("OBI WAN KENOBI",width/2,(height/3));
    }
    if(per==22){
      if(swipe==true){
      image(quiGon,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(quiGon,x,(height/2)+50);
        }
      }
      fill(255);
      text("QUI GON JINN",width/2,(height/3));
    }
    if(per==23){
      if(swipe==true){
      image(r2d2,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(r2d2,x,(height/2)+50);
        }
      }
      fill(255);
      text("R2D2",width/2,(height/3));
    }
    if(per==24){
      if(swipe==true){
      image(sebulba,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(sebulba,x,(height/2)+50);
        }
      }
      fill(255);
      text("SEBULBA",width/2,(height/3));
    }
    if(per==25){
      if(swipe==true){
      image(senatorial,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(senatorial,x,(height/2)+50);
        }
      }
      fill(255);
      text("SENATORIAL GUARD",width/2,(height/3));
    }
    if(per==26){
      if(swipe==true){
      image(shaakTi,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(shaakTi,x,(height/2)+50);
        }
      }
      fill(255);
      text("SHAAK TI",width/2,(height/3));
    }
    if(per==27){
      if(swipe==true){
      image(tusken,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(tusken,x,(height/2)+50);
        }
      }
      fill(255);
      text("TUSKEN RAIDER",width/2,(height/3));
    }
    if(per==28){
      if(swipe==true){
      image(watto,x,(height/2)+50);
      }else{
        if(swipeR==true || swipeL==true){
        }else{
          image(watto,x,(height/2)+50);
        }
      }
      fill(255);
      text("WATTO",width/2,(height/3));
    }
    
    
    
    if(per==29){
      image(jango,x,(height/2)+50);
      fill(255);
      text("JANGO FETT",width/2,(height/3));
    }
    if(per==30){
      image(imperial,x,(height/2)+50);
      fill(255);
      text("IMPERIAL GUARD",width/2,(height/3));
    }
    if(per==31){
      image(vader,x,(height/2)+50);
      fill(255);
      text("DARTH VADER",width/2,(height/3));
    }
    if(per==32){
      image(stormtrooper2,x,(height/2)+50);
      fill(255);
      text("STORMTROOPER",width/2,(height/3));
    }
    if(per==33){
      image(newOrder,x,(height/2)+50);
    }
  }
  
  if(mode==3){
    background(175);
    
    if(swipeL==true){
        swipeR=false;
        x-=70;
        if(x<-250){
          intro++;
          x=0;
          swipeL=false;
          if(intro==11){
            mode=1;
            intro=0;
          }
        }
    }
    if(swipeR==true){
        swipeL=false;
        x+=70;
        if(x>width+250){
          intro++;
          x=0;
          swipeR=false;
          if(intro==11){
            swipeL=false;
            swipeR=false;
            AS=false;
            BS=false;
            CS=false;
            DS=false;
            AB=false;
            BB=false;
            CB=false;
            DB=false;
            mode=1;
            intro=0;
          }
        }
    }
    if(mousePressed){
    if(mouseY<((height/3)*2)&&mouseY>(height/3)){
      if((mouseX>width/4)&&(mouseX<(width/4)*3)){
        x=mouseX;
      }
      if(mouseX>width/2){
        textAlign(CENTER);
        respuestaR();
      }if(mouseX<width/2){
        textAlign(CENTER);
        respuestaL();
      }
    }
    }else if((swipeL==false)&&(swipeR==false)){
      x=width/2;
    }
    per=0;
    if(per==0){
      image(c3po,x,height/2);
    }
    textAlign(CENTER);
    textos();
    icons();
  }
  
  if((mode==4)==false){
    noStroke();
  }
  
  if(mode==4){
    background(255);
    
    if(fill1a==1){
      fill1b=0;
    }
    if(fill1a==-1){
      fill1b=255;
    }
    
    
    if(fill2a==1){
      fill2b=0;
    }
    if(fill2a==-1){
      fill2b=255;
    }
    
    
    if(fill3a==1){
      fill3b=0;
    }
    if(fill3a==-1){
      fill3b=255;
    }
    
    
    if(fill4a==1){
      fill4b=0;
    }
    if(fill4a==-1){
      fill4b=255;
    }
    
    
    if(fill5a==1){
      fill5b=0;
    }
    if(fill5a==-1){
      fill5b=255;
    }
    
    
    if(fill6a==1){
      fill6b=0;
    }
    if(fill6a==-1){
      fill6b=255;
    }
    
    stroke(0);
    line(width/2,0,width/2,height);
    
    image(exit,width/2,((height/5)*4)+125);
    
    textSize(80);
    textFont(font2);
    
    textAlign(CENTER);
    rectMode(CENTER);
    strokeWeight(5);
    stroke(0);
    fill(0);
    text("Fancy Mode",(width/4),height/9);
    fill(fill1b);
    rect((width/4),(height/9)*2,50,50);
    
    fill(0);
    text("Low Cost Mode",(width/4),(height/9)*4);
    fill(fill2b);
    rect((width/4),(height/9)*5,50,50);
    
    fill(0);
    text("Broke Mode",(width/4),(height/9)*7);
    fill(fill3b);
    rect((width/4),(height/9)*8,50,50);
    
    
    
    
    fill(0);
    text("Fast",(width/4)*3,height/9);
    fill(fill4b);
    rect((width/4)*3,(height/9)*2,50,50);
    
    fill(0);
    text("Normal",(width/4)*3,(height/9)*4);
    fill(fill5b);
    rect((width/4)*3,(height/9)*5,50,50);
    
    fill(0);
    text("Slow",(width/4)*3,(height/9)*7);
    fill(fill6b);
    rect((width/4)*3f,(height/9)*8,50,50);
    
    textSize(48);
    textFont(font);
    
    if(fill2b==0 || fill3b==0){
      flechasNo=true;
    }else{
      flechasNo=false;
    }
    
    if(fill2b==0 || fill3b==0){
      respuestaGradual=false;
    }else{
      respuestaGradual=true;
    }
    
    if(fill3a==1){
      swipe=false;
    }else{
      swipe=true;
    }

    
    
    if(fill4b==0){
      fast=true;
    }else{
      fast=false;
    }
    
    if(fill5b==0){
      normal=true;
    }else{
      normal=false;
    }
    
    if(fill6b==0){
      slow=true;
    }else{
      slow=false;
    }
  }
}

void mouseReleased(){
  if(mode==2 && finale==10){
    exit();
  }
  if(mode==0 && mouseX>(width/2)-180 && mouseX<(width/2)+180 && mouseY>(height/2)-150 && mouseY<(height/2)+150){
      swipeL=false;
      swipeR=false;
      AS=false;
      BS=false;
      CS=false;
      DS=false;
      AB=false;
      BB=false;
      CB=false;
      DB=false;
      mode=1;
    }
    if(mode==0 && mouseX>(width/2)-155 && mouseX<(width/2)+155 && mouseY>((height/4))-115 && mouseY<((height/4))+115){
      swipeL=false;
      swipeR=false;
      AS=false;
      BS=false;
      CS=false;
      DS=false;
      AB=false;
      BB=false;
      CB=false;
      DB=false;
      mode=3;
    }
    
    if(mode==0 && mouseX>(width/2)-155 && mouseX<(width/2)+155 && mouseY>((height/4)*3)-115 && mouseY<((height/4)*3)+115){
      swipeL=false;
      swipeR=false;
      AS=false;
      BS=false;
      CS=false;
      DS=false;
      AB=false;
      BB=false;
      CB=false;
      DB=false;
      mode=4;
    }
    
    if(mode==2&& (mouseX>(width/2)-200) && (mouseX<(width/2)+200) && (mouseY>(height)-600) && (mouseY<(height)-200)){
      swipeL=false;
      swipeR=false;
      AS=false;
      BS=false;
      CS=false;
      DS=false;
      AB=false;
      BB=false;
      CB=false;
      DB=false;
      mode=0;
      per=int(random(0,29));
  res=int(random(0,4));
  //fondo=int(random(1,19));
  JK=120;
  force=120;
  CA=120;
  droids=120;
    }
    
  //ASm=true;
  //BSm=true;
  //CSm=true;
  //DSm=true;
  
  if((mouseX<(width/26)*12)&&mouseY<((height/3)*2)&&mouseY>(height/3)){
      swipeL=true;
      answer=1;
    }if((mouseX>(width/26)*14)&&mouseY<((height/3)*2)&&mouseY>(height/3)){
      swipeR=true;
      answer=2;
    }
    
    
    if(mode==4 && mouseX>((width/4))-40 && mouseX<((width/4))+40 &&
    mouseY>((height/9)*2)-40 && mouseY<((height/9)*2)+40){    
      if(fill1a==-1){
        fill1a=1;
        if(fill2a==1){
          fill2a=-1;
        }
        if(fill3a==1){
          fill3a=-1;
        }
      }
    }
    if(mode==4 && mouseX>((width/4))-40 && mouseX<((width/4))+40 &&
    mouseY>((height/9)*5)-40 && mouseY<((height/9)*5)+40){
      if(fill2a==-1){
        fill2a=1;
        if(fill1a==1){
          fill1a=-1;
        }
        if(fill3a==1){
          fill3a=-1;
        }
      }
    }
    if(mode==4 && mouseX>((width/4))-40 && mouseX<((width/4))+40 &&
    mouseY>((height/9)*8)-40 && mouseY<((height/9)*8)+40){
      if(fill3a==-1){
        fill3a=1;
        if(fill2a==1){
          fill2a=-1;
        }
        if(fill1a==1){
          fill1a=-1;
        }
      }
    }
    
    
    
    if(mode==4 && mouseX>((width/4)*3)-40 && mouseX<((width/4)*3)+40 &&
    mouseY>((height/9)*2)-40 && mouseY<((height/9)*2)+40){    
      if(fill4a==-1){
        fill4a=1;
        if(fill5a==1){
          fill5a=-1;
        }
        if(fill6a==1){
          fill6a=-1;
        }
      }
    }
    if(mode==4 && mouseX>((width/4)*3)-40 && mouseX<((width/4)*3)+40 &&
    mouseY>((height/9)*5)-40 && mouseY<((height/9)*5)+40){
      if(fill5a==-1){
        fill5a=1;
        if(fill4a==1){
          fill4a=-1;
        }
        if(fill6a==1){
          fill6a=-1;
        }
      }
    }
    if(mode==4 && mouseX>((width/4)*3)-40 && mouseX<((width/4)*3)+40 &&
    mouseY>((height/9)*8)-40 && mouseY<((height/9)*8)+40){
      if(fill6a==-1){
        fill6a=1;
        if(fill5a==1){
          fill5a=-1;
        }
        if(fill4a==1){
          fill4a=-1;
        }
      }
    }
    
    
    
    if(mode==4 && mouseX>(width/2)-50 && mouseX<(width/2)+50 && mouseY<(((height/5)*4)+125)+50 && mouseY>(((height/5)*4)+125)-50){
      mode=0;
    }
    
    if(mode==5){
      if(slide==0){
      if(mouseX>0 && mouseX<width/2 && mouseY>(height/6)*4 && mouseY<height){
        exit();
      }
      if(mouseX>width/2 && mouseX<width && mouseY>(height/6)*4 && mouseY<height){
        link("https://play.google.com/store/apps/details?id=com.nomone.resolution_changer&hl=es");
      }
      }
    }
    fon++;
}
