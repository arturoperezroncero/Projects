float y,x,t,lol,s1,s2,s3,wtf,yeah,in1,in2,in3,in4,vel,complexity,size,opacity,quality;
boolean drag;
float s[]=new float[100000];
float c1[]=new float[100000];
float c2[]=new float[100000];
float c3[]=new float[100000];
float ran[]=new float[18];

void setup() {
  fullScreen();
  background(0);
  
  vel=.001;
  t=0;
  size=500;
  complexity=2;
  opacity=30;
  quality=5;
  
  lol=s.length-1;
  
  //for(int i=0; i<lol;i+=quality){
  //  c1[i]=random(0,255);
  //  c2[i]=random(0,255);
  //  c3[i]=random(0,255);
  //}
  
  for(int i=0; i<lol;i+=quality){
    int poscol=i % 1530;
    if(poscol>=0 && poscol<255){
      c1[i]=255;
      c2[i]=i % 255;
      c3[i]=0;
    }
    if(poscol>=255 && poscol<510){
      c1[i]=255-(i % 255);
      c2[i]=255;
      c3[i]=0;
    }
    if(poscol>=510 && poscol<765){
      c1[i]=0;
      c2[i]=255;
      c3[i]=i % 255;
    }
    if(poscol>=765 && poscol<1020){
      c1[i]=0;
      c2[i]=255-(i % 255);
      c3[i]=255;
    }
    if(poscol>=1020 && poscol<1275){
      c1[i]=i % 255;
      c2[i]=0;
      c3[i]=255;
    }
    if(poscol>=1275 && poscol<1530){
      c1[i]=255;
      c2[i]=0;
      c3[i]=255-(i % 255);
    }
  }
  
  for(int i=0; i<18;i++){
    ran[i]=int(random(-complexity,complexity));
  }
  
  in1=width/2;
  in2=height/2;
}

void draw() {
  fill(0,opacity);
  rect(-5,-5,width+10,height+10);
  
  fill(255);
  textSize(20);
  text(int(ran[0])+"x^2 "+int(ran[1])+"y^2 "+int(ran[2])+"t^2 "+int(ran[3])+"x "+int(ran[4])+"y "+int(ran[5])+"t "+int(ran[6])+"xy "+int(ran[7])+"xt "+int(ran[8])+"yt ",width/20,height/10);
  text(int(ran[9])+"x^2 "+int(ran[10])+"y^2 "+int(ran[11])+"t^2 "+int(ran[12])+"x "+int(ran[13])+"y "+int(ran[14])+"t "+int(ran[15])+"xy "+int(ran[16])+"xt "+int(ran[17])+"yt ",width/20,height/8);
  
  if(drag==true){
    in3=mouseX;
    in4=mouseY;
    drag=false;
  }
  if(mousePressed){
    translate(in1+(mouseX-in3),in2+(mouseY-in4));
  }else{
    translate(in1,in2);
  }

println(mouseX, mouseY);

  if(mousePressed && mouseX>98 && mouseY>92 && mouseX<145 && mouseY<107){
    if(ran[0]==1){
      ran[0]=0;
    }else{
      ran[0]=1;
    }
  }

  ran[0]=0;
  ran[1]=0;
  ran[2]=1;
  ran[3]=0;
  ran[4]=-1;
  ran[5]=0;
  ran[6]=1;
  ran[7]=-1;
  ran[8]=0;
  
  ran[9]=0;
  ran[10]=0;
  ran[11]=1;
  ran[12]=1;
  ran[13]=0;
  ran[14]=0;
  ran[15]=0;
  ran[16]=0;
  ran[17]=0;
  
  
  //background(0);
  
  if(t<2){
    t+=vel;
  }

  
  s1=1;
  s2=1;
  
  for(int i=0; i<lol;i+=quality){
    s[i]=ran[0]*pow(s1,2)+ran[1]*pow(s2,2)+ran[2]*pow(t,2)+ran[3]*s1+ran[4]*s2+ran[5]*t+ran[6]*s1*s2+ran[7]*s1*t+ran[8]*s2*t;
    s[i+1]=ran[9]*pow(s1,2)+ran[10]*pow(s2,2)+ran[11]*pow(t,2)+ran[12]*s1+ran[13]*s2+ran[14]*t+ran[15]*s1*s2+ran[16]*s1*t+ran[17]*s2*t;
    
    s1=s[i];
    s2=s[i+1];
  
    strokeWeight(1.5);
    
    stroke(c1[i],c2[i],c3[i]);
    point(size*s[i],size*s[i+1]);
  }
  
  //saveFrame();
}

void keyReleased(){
  if(key=='+'){
    quality=1;
  }
  if(key=='-'){
    quality=10;
  }
  if(key=='.'){
    quality=5;
  }
  
  if(keyCode=='0'){
    background(0);
    in1=width/2;
    in2=height/2;
    t=0;
  
  for(int i=0; i<18;i++){
    yeah=int(random(-complexity,complexity));
    if(yeah>0){
      ran[i]=1;
    }if(yeah<0){
      ran[i]=-1;
    }if(yeah==0){
      ran[i]=0;
    }
  }
  } 
}

void keyPressed(){
  if(keyCode=='1'){
    t=map(mouseX,0,width,-2,2);
  }
  
  if(keyCode=='2'){
    vel=map(mouseX,0,width,-.002,.002);
  }
}

void mousePressed(){
  drag=true;
}

void mouseReleased(){
  in1=in1+(mouseX-in3);
  in2=in2+(mouseY-in4);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  size+=-200*e;
}
