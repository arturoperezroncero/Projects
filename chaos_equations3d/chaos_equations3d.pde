import peasy.*;

float y,x,t,lol,s1,s2,s3,wtf,yeah,vel;
float s[]=new float[10001];
float c1[]=new float[10001];
float c2[]=new float[10001];
float c3[]=new float[10001];
float ran[]=new float[42];

PeasyCam cam;

void setup() {
  vel=.001;
  cam = new PeasyCam(this, 2000);
  
  fullScreen(P3D);

  
  t=0;
  
  lol=s.length-2;
  
  for(int i=0; i<lol;i++){
    c1[i]=random(0,255);
    c2[i]=random(0,255);
    c3[i]=random(0,255);
  }
  
  for(int i=0; i<42;i++){
    yeah=int(random(-3,3));
    if(yeah>0){
      ran[i]=1;
    }if(yeah<0){
      ran[i]=-1;
    }if(yeah==0){
      ran[i]=0;
    }
  }
}

void draw() {
  rotateX(0);
  rotateY(0);
  rotateZ(0);
  background(0);
  
  fill(255);
  textSize(20);
  println(int(ran[0])+"x^2 "+int(ran[1])+"y^2 "+int(ran[2])+"z^2 "+int(ran[3])+"t^2 "+int(ran[4])+"x "+int(ran[5])+"y "+int(ran[6])+"z "+int(ran[7])+"t "+int(ran[8])+"xy "+int(ran[9])+"xt "+int(ran[10])+"yt "+int(ran[11])+"xz "+int(ran[12])+"yz "+int(ran[13])+"zt ",width/20,height/10);
  println(int(ran[14])+"x^2 "+int(ran[15])+"y^2 "+int(ran[16])+"z^2 "+int(ran[17])+"t^2 "+int(ran[18])+"x "+int(ran[19])+"y "+int(ran[20])+"z "+int(ran[21])+"t "+int(ran[22])+"xy "+int(ran[23])+"xt "+int(ran[24])+"yt "+int(ran[25])+"xz "+int(ran[26])+"yz "+int(ran[27])+"zt ",width/20,(height/10)*2);
  println(int(ran[28])+"x^2 "+int(ran[29])+"y^2 "+int(ran[30])+"z^2 "+int(ran[31])+"t^2 "+int(ran[32])+"x "+int(ran[33])+"y "+int(ran[34])+"z "+int(ran[35])+"t "+int(ran[36])+"xy "+int(ran[37])+"xt "+int(ran[38])+"yt "+int(ran[39])+"xz "+int(ran[40])+"yz "+int(ran[41])+"zt ",width/20,(height/10)*3);
  
  
  
  s1=t;
  s2=t;
  s3=t;
  
  for(int i=0; i<lol;i++){
    s[i]=ran[0]*pow(s1,2)+ran[1]*pow(s2,2)+ran[2]*pow(s3,2)+ran[3]*pow(t,2)+ran[4]*s1+ran[5]*s2+ran[6]*s3+ran[7]*t+ran[8]*s1*s2+ran[9]*s1*t+ran[10]*s2*t+ran[11]*s1*s3+ran[12]*s2*s3+ran[13]*s3*t;
    s[i+1]=ran[14]*pow(s1,2)+ran[15]*pow(s2,2)+ran[16]*pow(s3,2)+ran[17]*pow(t,2)+ran[18]*s1+ran[19]*s2+ran[20]*s3+ran[21]*t+ran[22]*s1*s2+ran[23]*s1*t+ran[24]*s2*t+ran[25]*s1*s3+ran[26]*s2*s3+ran[27]*s3*t;
    s[i+2]=ran[28]*pow(s1,2)+ran[29]*pow(s2,2)+ran[30]*pow(s3,2)+ran[31]*pow(t,2)+ran[32]*s1+ran[33]*s2+ran[34]*s3+ran[35]*t+ran[36]*s1*s2+ran[37]*s1*t+ran[38]*s2*t+ran[39]*s1*s3+ran[40]*s2*s3+ran[41]*s3*t;
    
    s1=s[i];
    s2=s[i+1];
    s3=s[i+2];
  
    strokeWeight(1.5);
    
    stroke(c1[i],c2[i],c3[i]);
    point(1000*s1,1000*s2,1000*s3);
  }
  
  if(t<2){
    t+=vel;
  }
}

void keyReleased(){ 
  if(keyCode=='1'){
    t=map(mouseX,0,width,-2,2);
  }
  
  if(keyCode=='2'){
    vel=map(mouseX,0,width,-.002,.002);
  }
  
  if(keyCode=='0'){
    background(0);
    t=0;
  
  for(int i=0; i<42;i++){
    yeah=int(random(-3,3));
    if(yeah>0){
      ran[i]=1;
    }if(yeah<0){
      ran[i]=-1;
    }if(yeah==0){
      ran[i]=0;
    }
  }
  
  //ran[0]=0;
  //ran[1]=-1;
  //ran[2]=0;
  //ran[3]=0;
  //ran[4]=1;
  //ran[5]=0;
  //ran[6]=0;
  //ran[7]=1;
  //ran[8]=0;
  //ran[9]=1;
  //ran[10]=-1;
  //ran[11]=0;
  //ran[12]=0;
  //ran[13]=0;
  
  //ran[14]=0;
  //ran[15]=1;
  //ran[16]=-1;
  //ran[17]=0;
  //ran[18]=0;
  //ran[19]=0;
  //ran[20]=-1;
  //ran[21]=-1;
  //ran[22]=1;
  //ran[23]=0;
  //ran[24]=-1;
  //ran[25]=0;
  //ran[26]=0;
  //ran[27]=-1;
  
  //ran[28]=0;
  //ran[29]=-1;
  //ran[30]=0;
  //ran[31]=0;
  //ran[32]=1;
  //ran[33]=-1;
  //ran[34]=0;
  //ran[35]=0;
  //ran[36]=1;
  //ran[37]=0;
  //ran[38]=-1;
  //ran[39]=-1;
  //ran[40]=1;
  //ran[41]=0;
  }  
}
