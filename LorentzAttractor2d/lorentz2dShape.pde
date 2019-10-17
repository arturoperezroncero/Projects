  float a = 10;
  float b = 28;
  float c = 8.0/3.0;
  
  float x,y,z,dt,dif;
  
  ArrayList<PVector> points = new ArrayList<PVector>();

void setup(){
  background(255);
  size(500,500);
  x=.01;
  dif=0.00001;
  frameRate(9999999);
  colorMode(HSB);
}

void draw(){
  translate(width/2,height/2);
  
  x+=a*(y-x)*dt;
  y+=(x*(b-z)-y)*dt;
  z+=(x*y-c*z)*dt;
  
  dt+=dif;
  
  points.add(new PVector(x, y, z));
  
  beginShape();
  for (PVector v : points) {
    strokeWeight(1);
    vertex(7*v.x, 7*v.y);
  }
  endShape();
}
