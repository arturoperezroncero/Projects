class particle{
  PVector pos,vel,acc;
  
  particle(float x, float y){
    pos=new PVector(x,y);
    vel=new PVector(random(-2,2),random(-2,2));
    acc=new PVector();
  }
  
  void update(){
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    
    if(this.pos.x>width || this.pos.x<0){
      this.vel.x*=-1;
    }
    if(this.pos.y>height || this.pos.y<0){
      this.vel.y*=-1;
    }
  }
  
  void show(){
    stroke(255);
    strokeWeight(2);
    point(this.pos.x,this.pos.y);
  }
  
  void attract(PVector target){
    PVector d=PVector.sub(target,pos);
    float dis=d.mag();
    float G=1000;
    dis=constrain(dis,10,9999);
    float force=G/(dis*dis);
    d.setMag(force);
    acc.add(d);
  }
}
