class javi{
  float xj =random(0,width);
  float yj =random(0,height);
  float velx=random(-20,20);
  float vely=random(-20,20);
    
  PImage img5;
  
  void how(){
    img5 = loadImage("javi.png");
    if(sioq>0){
      col1=random(0,255);
      col2=random(0,255);
      col3=random(0,255);
      imageMode(CENTER);
      img5.resize(150,200);
      image(img5,random(0,width),random(0,height));
      showplay1=col1;
      showplay2=col2;
      showplay3=col3;
    } else{
      //background(col1,col2,col3);
      col1=0;
      col2=0;
      col3=0;
      showplay1=show;
      showplay2=show;
      showplay3=show;
    }
  }
}
