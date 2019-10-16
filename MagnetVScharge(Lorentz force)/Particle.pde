class Particle {
  PVector pos;
  PVector posp;
  PVector prev;
  PVector vel;
  PVector acc;
  float mv = 0;

  Particle(float x, float y, float z,float xv, float yv, float zv) {
    pos = new PVector(x, y, z);
    vel = new PVector(xv, yv, zv);
    acc = new PVector();
  }

  void update() {
    vel.add(acc);
    vel.limit(50);
    pos.add(vel);
    acc.mult(0);
    
    //if(this.pos.y>=(height/2)-25 && this.pos.y<=(height/2)+-25 && this.pos.x>=(width/6)-25 && this.pos.x<=(width/6)+25){
    //  this.pos.x=0;
    //}
  }

  void show() {
    pushMatrix();
    translate(this.pos.x, this.pos.y, this.pos.z);
    sphereDetail(10);
    sphere(2);
    popMatrix();
    //camera(this.pos.x, this.pos.y, this.pos.z ,0, 0.0, 0.0,1,0,1);
  }

  void attracted() {
    //PVector vel=new PVector(mouseX-pmouseX,mouseY-pmouseY);
    //vel.mult(.005);
    
    PVector par=new PVector(pos.x,pos.y,pos.z);
    PVector c2=new PVector(-100,0,0);
    c2.sub(par);
    float dis = c2.mag();
    dis=constrain(dis,20,10000);
    float strength = -k / (dis * dis);
    c2.setMag(strength);
    
    par=new PVector(pos.x,pos.y,pos.z);
    PVector c3=new PVector(100,0,0);
    c3.sub(par);
    dis = c3.mag();
    strength = k / (dis * dis);
    c3.setMag(strength);
    
    if(c2.mag()<5 && c3.mag()<5){
      PVector c=new PVector(c2.x+c3.x,c2.y+c3.y,c2.z+c3.z);
      PVector real=vel.cross(c);
      acc.x+=c.x+vel.y*c.z-vel.z*c.y;
      acc.y+=c.y+vel.z*c.x-vel.x*c.z;
      acc.z+=c.z+vel.x*c.y-vel.y*c.x;
      //line(i,u,o,i+c.x,u+c.y,o+c.z);
      
      stroke(255,0,0);
      line(pos.x,pos.y,pos.z,pos.x+vel.x,pos.y+vel.y,pos.z+vel.z);
      stroke(0,255,0);
      line(pos.x,pos.y,pos.z,pos.x+c.x,pos.y+c.y,pos.z+c.z);
      stroke(0,0,255);
      line(pos.x,pos.y,pos.z,pos.x+real.x,pos.y+real.y,pos.z+real.z);
      stroke(255);
    }
  }
}
