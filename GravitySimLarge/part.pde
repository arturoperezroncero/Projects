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
  float mv = 0;

  Particle(float x, float y) {
    pos = new PVector(x, y);
    posp = new PVector(x, y);
    prev = new PVector(x, y);
    vel = new PVector(random(-mv,mv),random(-mv,mv));
    //vel = new PVector(0,0);
    acc = new PVector();
  }
  
  void system(int i) {
    attractors.add(new PVector(this.pos.x, this.pos.y));
    velo[i]=mag(vel.x,vel.y);
  }

  void update() {
    //if(this.pos.x==500 && this.pos.y==500){
    //  vel.x=3;
    //  vel.y=3;
    //}
    //if(this.pos.x==width-500 && this.pos.y==height-500){
    //  vel.x=-3;
    //  vel.y=-3;
    //}
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

  void show() {
    stroke(255,100);
    strokeWeight(2);
    point(this.pos.x, this.pos.y);

    //prev.x = pos.x;
    //prev.y = pos.y;
  }

  void attracted(PVector target) {
    PVector force = PVector.sub(target, pos);
    float d = force.mag();
    float G = 100;
    d = constrain(d, 100, 2500);
    float strength = G / (d * d);
    force.setMag(strength);
    acc.add(force);
    //vel.mult(.999);
  }
}
