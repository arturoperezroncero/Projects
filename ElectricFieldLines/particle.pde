class Particle {
  PVector pos;
  PVector posp;
  PVector prev;
  PVector vel;
  PVector acc;
  float mv = 0;

  Particle(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector();
    acc = new PVector();
  }

  void update(int rep, int i) {
    vel.add(acc);
    vel.limit(50);
    pos.add(vel);
    lines[rep][i]=new PVector(0,0);
    lines[rep][i].add(pos);
    acc.mult(0);
    
    //if(this.pos.y>=(height/2)-25 && this.pos.y<=(height/2)+-25 && this.pos.x>=(width/6)-25 && this.pos.x<=(width/6)+25){
    //  this.pos.x=0;
    //}
  }

  void show() {
    stroke(255,100);
    strokeWeight(2);
    point(this.pos.x, this.pos.y);
  }

  void attracted() {
    d[lol]=new PVector(this.pos.x,this.pos.y);
    PVector c1=new PVector(width/6,height/2);
    c1.sub(d[lol]);
    float dis = c1.mag();
    float strength = k / (dis * dis);
    c1.setMag(strength);
    
    d[lol]=new PVector(this.pos.x,this.pos.y);
    PVector c2=new PVector(2*width/6,height/2);
    c2.sub(d[lol]);
    dis = c2.mag();
    strength = -k / (dis * dis);
    c2.setMag(strength);
    
    //if(c1.mag()<75 && c2.mag()<75){
       PVector c=new PVector(c1.x+c2.x,c1.y+c2.y);
       acc.add(c);
    //}
  }
}
