int size=3;
PVector force[];
PVector d[];
int lol,rep;
float k=1000000;

void setup(){
  background(0);
  fullScreen();
  force = new PVector[int(1+height/size)*int(1+width/size)];
  d = new PVector[int(1+height/size)*int(1+width/size)];
}

void draw(){
  background(0);
  stroke(255);
  for(int i=0; i<width;i+=size){
    for(int u=0; u<height;u+=size){
      lol=(int(height/size))*int(i/size)+int(u/size);
      d[lol]=new PVector(i,u);
      PVector c1=new PVector(mouseX+75,mouseY);
      c1.sub(d[lol]);
      float dis = c1.mag();
      float strength = k / (dis * dis);
      c1.setMag(strength);
      
      lol=(int(height/size))*int(i/size)+int(u/size);
      d[lol]=new PVector(i,u);
      PVector c2=new PVector(mouseX-75,mouseY);
      c2.sub(d[lol]);
      dis = c2.mag();
      strength = -k / (dis * dis);
      c2.setMag(strength);
      
      lol=(int(height/size))*int(i/size)+int(u/size);
      d[lol]=new PVector(i,u);
      PVector c3=new PVector(300,500);
      c3.sub(d[lol]);
      dis = c3.mag();
      strength = -k / (dis * dis);
      c3.setMag(strength);
      
      lol=(int(height/size))*int(i/size)+int(u/size);
      d[lol]=new PVector(i,u);
      PVector c4=new PVector(450,500);
      c4.sub(d[lol]);
      dis = c4.mag();
      strength = k / (dis * dis);
      c4.setMag(strength);
      
      if(c1.mag()<500 && c2.mag()<500 && c3.mag()<500 && c4.mag()<500){
        PVector c=new PVector(c1.x+c2.x+c3.x+c4.x,c1.y+c2.y+c3.y+c4.y);
        //line(i,u,i+c.x,u+c.y);
        
        //field
        //color wtf=color(int(map(c.mag(),0,100,0,255)),int(map(c.mag(),0,100,0,255)),int(map(c.mag(),0,100,0,255)));
        //set(i,u,wtf);
        
        // lines around
        color wtf=color(255,255,255);
        for(float o=50;o>1;o-=5){
          if(c.mag()>o && c.mag()<o+o/15){
            set(i,u,wtf);
          }
        }
      }
    }
  }
}
