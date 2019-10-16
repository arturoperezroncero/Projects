// Daniel Shiffman
// http://codingtra.in
// Attraction / Repulsion
// Video: https://youtu.be/OAcXnzRNiCY
// Processing transcription: Chuck England
  
class Particle {
  PVector pos;
  PVector posp;
  PVector prev;
  PVector vel;
  PVector acc;
  float mv = 5;
  int radius;

  Particle(float x, float y, int rad1) {
    pos = new PVector(x, y);
    posp = new PVector(x, y);
    prev = new PVector(x, y);
    //vel = new PVector(random(-mv,mv),random(-mv,mv));
    vel = new PVector(0,0);
    acc = new PVector();
    radius = rad1;
  }
  
  void system(int i) {
    attractors.add(new PVector(this.pos.x, this.pos.y));
    rad[i]=this.radius;
    velo[i]=this.vel;
  }

  void update() {
    vel.add(acc);
    vel.limit(50);
    pos.add(vel);
    acc.mult(0);
    
    if(this.pos.x>width || this.pos.x<0){
      this.vel.x*=-1;
    }
    if(this.pos.y>height || this.pos.y<0){
      this.vel.y*=-1;
    }
  }

  void show(int radi) {
    radius=radi;
    stroke(255, 255);
    strokeWeight(radius*2);
    point(this.pos.x, this.pos.y);
    
    //line(this.pos.x, this.pos.y, this.prev.x, this.prev.y);

    //prev.x = pos.x;
    //prev.y = pos.y;
  }

  void attracted(PVector target, int mass, PVector veloc) {
    PVector force = PVector.sub(target, pos);
    if(mag(force.x,force.y)<radius+5 && mag(force.x,force.y)!=0){
      this.vel.add(veloc);
      println(this.vel.add(veloc));
      col=true;
    }
    if(col2==true){
      col2=false;
    }
    float d = force.mag();
    d = constrain(d, 1, 25);
    float G = 5;
    float strength = mass * G / (d * d);
    force.setMag(strength);
    acc.add(force);
  }
}
