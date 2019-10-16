import java.util.*;

List<Particle> particles = new ArrayList<Particle>();

int size=2;
PVector force[];
PVector d[];
int lol,rep;
float q1=0;
float q2=99999;
float k=100000000;
float q=1000;
PVector[][] lines;

PVector[] velo;

int num=100;
int amount=5;

void setup(){
  background(0);
  fullScreen();
  force = new PVector[int(1+height/size)*int(1+width/size)];
  d = new PVector[int(1+height/size)*int(1+width/size)];
   
  velo = new PVector[particles.size()];
   
  //for(float i=0;i<360;i+=amount){
  //  particles.add(new Particle((width/6)+sin(i),(height/2)+cos(i)));
  //}
  for(float i=0;i<360;i+=amount){
    particles.add(new Particle(2*(width/6)+sin(i),(height/2)+cos(i)));
  }
  
  lines = new PVector[num][particles.size()];
}

void draw(){
  //flux lines (primera k=- y segunda k=+

  background(0);
  //stroke(255);
  //for(int i=0; i<width;i+=size){
  //  for(int u=0; u<height;u+=size){
  //    lol=(int(height/size))*int(i/size)+int(u/size);
  //    d[lol]=new PVector(i,u);
  //    PVector c1=new PVector(width/5,height/2);
  //    c1.sub(d[lol]);
  //    float dis = c1.mag();
  //    float strength = -k / (dis * dis);
  //    c1.setMag(strength);
  //    //if(c1.mag()<50){
  //    //  line(i,u,i+c1.x,u+c1.y);
  //    //  println(c1);
  //    //}
      
  //    lol=(int(height/size))*int(i/size)+int(u/size);
  //    d[lol]=new PVector(i,u);
  //    PVector c2=new PVector(2*width/5,height/2);
  //    c2.sub(d[lol]);
  //    dis = c2.mag();
  //    strength = k / (dis * dis);
  //    c2.setMag(strength);
  //    //if(c2.mag()<50){
  //    //  line(i,u,i+c2.x,u+c2.y);
  //    //  println(c2);
  //    //}
      
  //    if(c1.mag()<75 && c2.mag()<75){
  //      PVector c=new PVector(c1.x+c2.x,c1.y+c2.y);
  //      //line(i,u,i+c.x,u+c.y);
        
  //      //field
  //      //color wtf=color(int(map(c.mag(),0,100,0,255)),int(map(c.mag(),0,100,0,255)),int(map(c.mag(),0,100,0,255)));
  //      //set(i,u,wtf);
        
  //      // lines around
  //      //color wtf=color(255,255,255);
  //      //for(float o=50;o>1;o-=5){
  //      //  if(c.mag()>o && c.mag()<o+o/50){
  //      //    set(i,u,wtf);
  //      //  }
  //      //}
  //    }
  //  }
  //}
  
  for(int i=0; i<width;i+=size){
    for(int u=0; u<height;u+=size){
      lol=(int(height/size))*int(i/size)+int(u/size);
    }
  }
  
  for (int i = 0; i < particles.size(); i++) {
    Particle particle = particles.get(i);
    
    //attractors.remove(i);
    for (int j = 0; j < 2; j++) {
      particle.attracted();
    }
    particle.update(rep,i);
    //particle.show();
  }
  if(rep<num-1){
    rep++;
  }else{
    for(int i=0; i<particles.size(); i++){
    for(int o=0; o<num-2; o++){
      strokeWeight(1);
      stroke(255);
      line(lines[o][i].x,lines[o][i].y,lines[o+1][i].x,lines[o+1][i].y);
    }
  }
  }
}
