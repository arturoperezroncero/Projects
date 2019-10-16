import java.util.*;

List<PVector> attractors = new ArrayList<PVector>();
List<particle> particles = new ArrayList<particle>();

void setup(){
  size(500,500);
  
  particles.add(new particle (100, 100));
  particles.add(new particle (400, 400));
}

void draw(){
  background(51);
  
  for(int i=0;i<particles.size();i++){
    particle particle=particles.get(i);
    for(int u=0;u<attractors.size();u++){
      particle.attract(attractors.get(u));
    }
    particle.update();
    particle.show();
  }
}

void mouseReleased(){
  attractors.add(new PVector (mouseX, mouseY));
}
