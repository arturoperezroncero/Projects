import java.util.*;

List<PVector> attractors = new ArrayList<PVector>();
List<Particle> particles = new ArrayList<Particle>();

float[] velo;
float[] mass;
float punt, dm, dr, col1, col2, col3;
float dmax=0;
float dmin=999999999;
PImage img;
int size = 10;
color c;
int a;

void setup() {
  for(int i=0; i<width;i+=size){
    for(int u=0; u<height;u+=size){
      particles.add(new Particle(i,u));
    }
  }
  velo = new float[particles.size()];
  mass = new float[particles.size()];
  
  img = loadImage("noise.png");
  image(img,0,0);
  for(int i=0; i<width;i+=size){
    for(int u=0; u<height;u+=size){
      c=(get(i, u));
      a = c & 0xFF;
      
      mass[((height/size))*int(i/size)+int(u/size)] = map(a,0,255,200,25);
    }
   }  
   
  fullScreen();
  
  //for(int u=0; u<20000;u++){
  //   particles.add(new Particle(random(0,width),random(0,height)));
  // }
   
   //particles.add(new Particle(500,500));
   //particles.add(new Particle(width-500,height-500));
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(.1);
 
  attractors.clear();
  for (int i = 0; i < particles.size(); i++) {
    Particle particle = particles.get(i);
    particle.system(i);
  }
  
  for (int i = 0; i < particles.size(); i++) {
    Particle particle = particles.get(i);
    
    //attractors.remove(i);
    for (int j = 0; j < attractors.size(); j++) {
      particle.attracted(attractors.get(j), mass[j]);
    }
    if(dr/dm>dmax){
      dmax=dr/dm;
    }
    if(dr/dm<dmin){
      dmin=dr/dm;
    }
    println(dmax,dmin);
    col1=map(dr/dm,50000,5,120,230);
    col2=map(dr/dm,50000,5,40,150);
    col3=map(dr/dm,50000,5,140,30);
    dm=0;
    dr=0;
    particle.update();
    particle.show(mass[i]/65,col1,col2,col3);
  }
  //saveFrame();
}
