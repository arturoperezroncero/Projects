float a,b,aa,bb,bright,ao,bo,zoom1,zoom2,aj1,aj2,aj3,aj4,aj5,aj6,grado,complex;
boolean drag;

void setup(){
  grado=1;
  fullScreen();
  zoom1=1.92;
  zoom2=1.08;
}

void draw(){
  complex=25/(sqrt(zoom1));
  loadPixels();
  
  if(drag==true){
    aj3=map(mouseX,0,width,-zoom1*grado,zoom1*grado);
    aj4=map(mouseY,0,height,-zoom2*grado,zoom2*grado);
    drag=false;
  }
  if(mousePressed){
    aj1=aj5-(map(mouseX,0,width,-zoom1*grado,zoom1*grado)-aj3);
    aj2=aj6-(map(mouseY,0,height,-zoom2*grado,zoom2*grado)-aj4);
  }else{
    
  }
  
  for(int i=0; i<width; i++){
    for(int j=0; j<height; j++){
      a=map(i,0,width,-zoom1+aj1,zoom1+aj1);
      b=map(j,0,height,-zoom2+aj2,zoom2+aj2);
      
      ao=a;
      bo=b;
      
      float n=0;
      while(n < complex){
        aa=a*a-b*b;
        bb=2*a*b;
    
        a=aa+ao;
        b=bb+bo;
    
        if(abs(a+b)>16){
          break;
        }
        
        n++;
      }
      bright=map(n,0,complex,0,255);
      
      pixels[width*j+i]=color(bright);
    }
  }
  
  updatePixels();
  
  text(frameRate,100,100);
}

void mousePressed(){
  drag=true;
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  zoom1*=abs(.9*e);
  zoom2*=abs(.9*e);
}

void mouseReleased(){
  aj1=aj5-(map(mouseX,0,width,-zoom1*grado,zoom1*grado)-aj3);
  aj2=aj6-(map(mouseY,0,height,-zoom2*grado,zoom2*grado)-aj4);
  
  aj5=aj1;
  aj6=aj2;
}
