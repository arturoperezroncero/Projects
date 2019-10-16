import java.util.*;

List<PVector> attractors = new ArrayList<PVector>();
List<Particle> particles = new ArrayList<Particle>();

float[] velo;
float[] mass;
float punt, dm, dr, col1, col2, col3, disp, disn, disp2, disn2,m0,m1,m2,max,x,velm;
float dmax=0;
float dmin=999999999;
int size = 50;
int a,freq;
PVector sol1,sol2,masscen;
boolean destruct;
PVector centre= new PVector(750,500);

void setup() {
  background(0);  
  particles.add(new Particle(1250,500)); 
  particles.add(new Particle(centre.x,centre.y));
  
  freq=3;
  
  mass = new float[particles.size()]; 
  mass[0]=150;
  mass[1]=1000;
  
  velo = new float[particles.size()];
  velo[0]=5;
   
  fullScreen();
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(.1);
 
  attractors.clear();
  for (int i = 0; i < particles.size(); i++) {
    Particle particle = particles.get(i);
    if(i==0 ||i==1){
      particle.system();
    }
  }
  
  for (int i = particles.size()-1; i > -1 ; i--) {
    Particle particle = particles.get(i);
    
    for (int j = 0; j < attractors.size(); j++) {
      particle.attracted(attractors.get(j), mass[j]);
    }
    particle.update(i);
    if(destruct==false){
      particle.show();
    }else{
      particles.remove(i);
      destruct=false;
    }
  }

    for (int j = 0; j < width; j+=freq) {
      for (int k = 0; k < height; k+=freq) {
          strokeWeight(1);
          masscen = new PVector((mass[0]*posP.x+mass[1]*centre.x)/(mass[0]+mass[1]),(mass[0]*posP.y+mass[1]*centre.y)/(mass[0]+mass[1]));
          float one=+sq(((sqrt(mass[1]/abs(dist(masscen.x,masscen.y,posP.x,posP.y))))/dist(masscen.x,masscen.y,posP.x,posP.y)*dist(masscen.x,masscen.y,j,k)))/2+(mass[1]/dist(centre.x,centre.y,j,k)+mass[0]/dist(posP.x,posP.y,j,k));
          if(one>max && one<50){
            max=one;
          }
          for (float y = 0; y < 5; y+=.2) {
            if(one>y-.02 && one<y+.02){
              stroke(255);
              point(j,k);
            }
          }
      }
    }
    float one=+sq(((sqrt(mass[1]/abs(dist(masscen.x,masscen.y,posP.x,posP.y))))/dist(masscen.x,masscen.y,posP.x,posP.y)*dist(masscen.x,masscen.y,mouseX,mouseY)))/2+(mass[1]/dist(centre.x,centre.y,mouseX,mouseY)+mass[0]/dist(posP.x,posP.y,mouseX,mouseY));
    text(one,100,100);
}
