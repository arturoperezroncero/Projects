// Daniel Shiffman
// http://codingtra.in
// Attraction / Repulsion
// Video: https://youtu.be/OAcXnzRNiCY
// Processing transcription: Chuck England

import java.util.*;

List<PVector> attractors = new ArrayList<PVector>();
List<Particle> particles = new ArrayList<Particle>();

float[] velo;
float punt;

void setup() {
  background(51);
  fullScreen();
  //for(int i=0; i<width;i+=150){
  //  for(int u=0; u<height;u+=150){
  //    particles.add(new Particle(i,u));
  //  }
  //}
  
  for(int u=0; u<1000;u++){
     particles.add(new Particle(random(0,width),random(0,height)));
   }
   
   //particles.add(new Particle(500,500));
   //particles.add(new Particle(width-500,height-500));
   
   velo = new float[particles.size()];
}

void draw() {
  background(51);
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
      particle.attracted(attractors.get(j));
    }
    particle.update();
    particle.show();
  }
  //saveFrame();
}
