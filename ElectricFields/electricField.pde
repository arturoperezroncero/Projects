import java.util.*;

List<Particle> particles = new ArrayList<Particle>();

int size=25;
PVector force[];
PVector d[];
int lol;
int num=10;
float q1=0;
float q2=99999;
float k=1000000;

PVector[] velo;

void setup(){
  fullScreen();
  force = new PVector[int(1+height/size)*int(1+width/size)];
  d = new PVector[int(1+height/size)*int(1+width/size)];
   
   velo = new PVector[particles.size()];
   
   
}

void draw(){
  //flux lines (primera k=- y segunda k=+
  //for(int i=0;i<360;i+=1){
  //  particles.add(new Particle((width/3)+sin(i),(height/2)+cos(i)));
  //}
  
  background(0);
  stroke(255);
  for(int i=0; i<width;i+=size){
    for(int u=0; u<height;u+=size){
      lol=(int(height/size))*int(i/size)+int(u/size);
      d[lol]=new PVector(i,u);
      //PVector c1=new PVector(width/3,height/2);
      PVector c1=new PVector(mouseX,mouseY);
      c1.sub(d[lol]);
      float dis = c1.mag();
      float strength = k / (dis * dis);
      c1.setMag(strength);
      //if(c1.mag()<50){
      //  line(i,u,i+c1.x,u+c1.y);
      //  println(c1);
      //}
      
      lol=(int(height/size))*int(i/size)+int(u/size);
      d[lol]=new PVector(i,u);
      PVector c2=new PVector(2*width/3,height/2);
      c2.sub(d[lol]);
      dis = c2.mag();
      strength = -k / (dis * dis);
      c2.setMag(strength);
      //if(c2.mag()<50){
      //  line(i,u,i+c2.x,u+c2.y);
      //  println(c2);
      //}
      
      if(c1.mag()<75 && c2.mag()<75){
        PVector c=new PVector(c1.x+c2.x,c1.y+c2.y);
        line(i,u,i+c.x,u+c.y);
        
        //field
        //color wtf=color(int(map(c.mag(),0,100,0,255)),int(map(c.mag(),0,100,0,255)),int(map(c.mag(),0,100,0,255)));
        //set(i,u,wtf);
        
        // lines around
        //color wtf=color(255,255,255);
        //for(float o=50;o>1;o-=5){
        //  if(c.mag()>o && c.mag()<o+o/50){
        //    set(i,u,wtf);
        //  }
        //}
      }
    }
  }
  
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
    particle.update();
    particle.show();
  }
}
