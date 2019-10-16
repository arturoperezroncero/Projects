import peasy.PeasyCam;
PeasyCam cam;

import java.util.*;
List<Particle> particles = new ArrayList<Particle>();

int size=25;
PVector force[];
PVector d[];
int lol,rep;
float k=100;
int w=500;
int h=500;
int g=500;

void setup(){
  background(0);
  fullScreen(P3D);
  force = new PVector[int(1+height/size)*int(1+width/size)];
  d = new PVector[int(1+height/size)*int(1+width/size)];
  
  cam = new PeasyCam(this, 400);
  
  //for(float i=0;i<1;i++){
  //  particles.add(new Particle(0,150,0,0,0,0));
  //}
  
  //for(float i=0;i<360;i+=5){
  //  particles.add(new Particle(100*sin(i),100*cos(i),0,0,0,0));
  //}
  
  particles.add(new Particle(0,100,100,0,0,0));
}

void draw(){
  background(0);
  stroke(255);
  
  sphereDetail(10);
  fill(255);
  pushMatrix();
  translate(-100,0,0);
  sphere(20);
  popMatrix();
  
  pushMatrix();
  translate(100,0,0);
  sphere(20);
  popMatrix();
        
  //for(int i=-w/2; i<w/2;i+=size){
  //  for(int u=-h/2; u<h/2;u+=size){
  //    for(int o=-g/2; o<g/2;o+=size){
        
  //      lol=(i/w)*h*g+(u/h)*h+(o/g);
  //      d[lol]=new PVector(i,u,o);
  //      PVector c2=new PVector(-100,0,0);
  //      c2.sub(d[lol]);
  //      float dis = c2.mag();
  //      float strength = -k / (dis * dis);
  //      c2.setMag(strength);
        
  //      d[lol]=new PVector(i,u,o);
  //      PVector c3=new PVector(100,0,0);
  //      c3.sub(d[lol]);
  //      dis = c3.mag();
  //      strength = -k / (dis * dis);
  //      c3.setMag(strength);
        
  //      if(c2.mag()<100 && c3.mag()<100){
  //        PVector c=new PVector(c2.x+c3.x,c2.y+c3.y,c2.z+c3.z);
  //        line(i,u,o,i+c.x,u+c.y,o+c.z);
  //      }
  //    }
  //  }
  //}
  
  for (int i = 0; i < particles.size(); i++) {
    Particle particle = particles.get(i);
    
    particle.attracted();
    particle.update();
    particle.show();
  }
}
