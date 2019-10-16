PVector pos1,pos2,posP,velP;
float G = .1;
float dif=100;

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
    vel = new PVector(0,0);
    if(pos.x==1250 && pos.y==500){
      //change 1000 with the big mass
      vel.add(-(pos.y-centre.y),pos.x-centre.x);
      vel.setMag(sqrt(G*1000/abs(dist(centre.x,centre.y,pos.x,pos.y))));
    }if(pos.y==centre.x && pos.x==centre.y){
      vel.add(0,0);
    }
    
    acc = new PVector();
  }
  
  void system() {
    attractors.add(new PVector(this.pos.x, this.pos.y));
  }

  void update(int particle) {
    vel.add(acc);
    vel.limit(50);
    pos.add(vel);
    acc.mult(0);
    
    if(particle==1){
      centre=pos;
    }
    if(particle==0){
      posP=pos;
      velP=vel;
    }
  }

  void show() {
    stroke(255,200);
    //strokeWeight(4*sqrt(sqrt(mass)));
    strokeWeight(5);
    point(this.pos.x, this.pos.y);
  }

  void attracted(PVector target, float mass) {
    PVector force = PVector.sub(target, pos);
    
    float d = force.mag();
    d = constrain(d, 50, 10000);
    float strength = mass * G / (d * d);
    force.setMag(strength);
    acc.add(force);
    
    if(mag(this.vel.x, this.vel.y)>velm){
      velm=mag(this.vel.x, this.vel.y);
    }
  }
}
