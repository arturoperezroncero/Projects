import java.util.*;

List<PVector> attractors = new ArrayList<PVector>();
List<Particle> particles = new ArrayList<Particle>();

float[] velo;
float[] mass;
float punt, dm, dr, col1, col2, col3;
float dmax=0;
float dmin=999999999;
PImage img;
int size = 50;
int a;
float x,velm;

void setup() {
  //for(int i=0; i<width;i+=size){
  //  for(int u=0; u<height;u+=size){
  //    particles.add(new Particle(i,u,1));
  //  }
  //}
  particles.add(new Particle(1,1)); 
  particles.add(new Particle(500,500));
  
  mass = new float[particles.size()]; 
  mass[0]=1;
  mass[1]=1000;
  velo = new float[particles.size()];
  velo[0]=5;
   
  fullScreen();
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
    
    for (int j = 0; j < attractors.size(); j++) {
      particle.attracted(attractors.get(j), mass[j]);
    }
    particle.update();
    particle.show(mass[i]);
  }
  println(velm);
  //saveFrame();
}
