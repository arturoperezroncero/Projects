// Daniel Shiffman
// http://codingtra.in
// Attraction / Repulsion
// Video: https://youtu.be/OAcXnzRNiCY
// Processing transcription: Chuck England

import java.util.*;

List<PVector> attractors = new ArrayList<PVector>();
List<Particle> particles = new ArrayList<Particle>();

int[] rad;
PVector[] velo;
boolean col,col2;

void setup() {
  fullScreen();
  //for(int i=0; i<width;i+=25){
  //  for(int u=0; u<height;u+=25){
  //    particles.add(new Particle(i,u,1));
  //  }
  //}
  
  for(int u=0; u<2;u++){
     particles.add(new Particle(random(0,width),random(0,height),5));
   }
  
  rad = new int[particles.size()];
  velo = new PVector[particles.size()];
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
      particle.attracted(attractors.get(j),rad[j],velo[j]);
      if(col==true){
        if(rad[i]>=rad[j]){
          rad[i]+=rad[j]/2;
          rad[j]=0;
          particles.remove(j);
        }
        col=false;
        col2=true;
      }
    }
    particle.update();
    particle.show(rad[i]);
  }
  
  //saveFrame();
}
