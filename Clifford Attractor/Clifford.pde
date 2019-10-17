float x,xn,y,yn,a,b,c,d,zoom,n;

void setup(){
  fullScreen();
  background(0);
  
  a=-1.7;
  b=1.8;
  c=-1.9;
  d=-0.4;
  
  x=0;
  y=0;
  
  zoom=100;
  
  frameRate(999999999);
}

void draw(){
  translate(width/2,height/2);
  
  xn=sin(a*y)+c*cos(a*x);  
  yn=sin(b*x)+d*cos(b*y);
  
  x=xn;
  y=yn;
  
  strokeWeight(1.25);
  stroke(255,150);
  point(xn*250,yn*250);
  
  n++;
  if(n>10000){
    n=0;
  }
}
