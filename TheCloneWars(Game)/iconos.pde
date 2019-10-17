void icons(){
    noStroke();
    fill(0);
    image(barra,(width/3),height-40);
    imageMode(CENTER);
    image(cloneArmy,width/3,height-120);
    fill(col1,col2,0);
    rectMode(CORNER);
    rect(((width/3)-90),height-47,c,15);
    rectMode(CENTER);
    
    fill(0);
    image(barra,(width/3)*2,height-40);
    imageMode(CENTER);
    image(CIS,(width/3)*2,height-120);
    fill(col3,col4,0);
    rectMode(CORNER);
    rect(((width/3)*2)-90,height-47,d,15);
    rectMode(CENTER);
    
    fill(0);
    image(barra,(width/3),height-200);
    imageMode(CENTER);
    image(jediCouncil,width/3,height-270);
    fill(col5,col6,0);
    rectMode(CORNER);
    rect((width/3)-90,height-207,a,15);
    rectMode(CENTER);
    
    fill(255,0,0);
    rectMode(CORNERS);
    rect(((width/3)*2)-40,height-256,(((width/3)*2)-40)+(150-b),height-263);
    rectMode(CENTER);
    fill(0);
    imageMode(CENTER);
    image(force1,(width/3)*2,height-260);
    
    fill(0,255,0);
    rectMode(CORNERS);
    rect(((width/3)*2)+40,height-222,(((width/3)*2)+40)-(b),height-215);
    rectMode(CENTER);
    fill(0);
    imageMode(CENTER);
    image(force2,(width/3)*2,height-220);
}
