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
    
    //if(this.pos.x>width || this.pos.x<0){
    //  this.vel.x*=-1;
    //}
    //if(this.pos.y>height || this.pos.y<0){
    //  this.vel.y*=-1;
    //}
  }

  void show(float mass,float col1,float col2,float col3) {
    stroke(col1,col2,col3,150);
    strokeWeight(mass);
    point(this.pos.x, this.pos.y);

    //prev.x = pos.x;
    //prev.y = pos.y;
  }

  void attracted(PVector target, float mass) {
    PVector force = PVector.sub(target, pos);
    float d = force.mag();
    float G = .01;
    if(d<300){ //para compensar la falta de fuerzas fuera de la pantalla
      d = constrain(d, 5, 10000);
      dr+=d*d;
      dm += 1;
    }else{
      d=1000000;
    }
    float strength = mass * G / (d * d );
    force.setMag(strength);
    acc.add(force);
    //vel.mult(.999);
  }
}
