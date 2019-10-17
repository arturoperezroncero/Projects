String ang3 = "";
float ang3N;

class ang3{
  void caja(){
    //println(ang3N);
    rectMode(CENTER);
    noFill();
    strokeWeight(str[2]);  
    stroke(strC1[2],strC2[2],strC3[2]);
    rect((width/4)*3,height/6,100,50);
    textAlign(CENTER);   
    text("ángulo C",(width/4)*3,(height/6)-40);
    text(ang3,(width/4)*3,(height/6)+7);
    
    strokeWeight(3);
    stroke(0);
    line(((width/4)*3)-100,(height/6)+40,((width/4)*3)+100,(height/6)+40);
  }
  void teclado(){
    if(mouseX>=((width/4)*3)-50 && mouseX<=((width/4)*3)+50 && mouseY>=(height/6)-25 && mouseY<=(height/6)+25){
      str[2]=5;
      if(keyPressed){
        ang3N=int(ang3);
        if(key == '1'){
          ang3+="1";//int(ang3)
          delay(200);
      }
      if(key == '2'){
          ang3+="2";//int(ang3)
          delay(200);
      }
      if(key == '3'){
          ang3+="3";//int(ang3)
          delay(200);
      }
      if(key == '4'){
          ang3+="4";//int(ang3)
          delay(200);
      }
      if(key == '5'){
          ang3+="5";//int(ang3)
          delay(200);
      }
      if(key == '6'){
          ang3+="6";//int(ang3)
          delay(200);
      }
      if(key == '7'){
          ang3+="7";//int(ang3)
          delay(200);
      }
      if(key == '8'){
          ang3+="8";//int(ang3)
          delay(200);
      }
      if(key == '9'){
          ang3+="9";//int(ang3)
          delay(200);
      }
      if(key == '0'){
          ang3+="0";//int(ang3)
          delay(200);
      }
      if(key == '.'){
          ang3+=".";//int(sen2)
          delay(200);
      }
      if(int(ang3)>0){
      if(key == '-'){
          ang3="-"+ang3;//int(ang3)
          delay(200);
      }
      }
      if(int(ang3)>360){
        ang3="360";
      }
      if(int(ang3)<-360){
        ang3="-360";
      }
      if(key==BACKSPACE){
        ang3="";
      }
    }
    }else{
      str[2]=1;
    }
  }
  void answer(){
    if(modeT==2){
      if((lado1=="")==false || (lado2=="")==false || (lado3=="")==false){
       pag=1;
       respuestaLsol[0]=90;
       respuestaL[0]=true;
       ang3="";
        }
    }
        
        if(modeT==0){
        if((lado1=="")==false && (lado2=="")==false && lado3==""){
          pag=1;
          angRN[0]=acos(float(lado2)/float(lado1));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="")==false && (lado2=="") && (lado3=="")==false){
          pag=1;
          angRN[0]=asin(float(lado3)/float(lado1));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="") && (lado2=="")==false && (lado3=="")==false){
          pag=1;
          angRN[0]=atan(float(lado3)/float(lado2));
          respuesta[0]=true;
          ang2="";
        }
        }
        
        if(modeT==1){
        if((lado1=="")==false && (lado2=="")==false && lado3==""){
          pag=1;
          angRN[0]=acos(float(lado1)/float(lado2));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="")==false && (lado2=="") && (lado3=="")==false){
          pag=1;
          angRN[0]=atan(float(lado1)/float(lado3));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="") && (lado2=="")==false && (lado3=="")==false){
          pag=1;
          angRN[0]=asin(float(lado3)/float(lado2));
          respuesta[0]=true;
          ang2="";
        }
        }
        
        
        
        
        
        
        
    if(sen3=="" && cos3=="" && tg3==""){
          str[9]=5;
          str[10]=5;
          str[11]=5;
          ang3="";
        }
        if((sen3=="")==false && cos3=="" && tg3==""){
          pag=1;
          angRN[2]=asin(sen3N);
          respuesta[2]=true;
          ang3="";
        }
        if((cos3=="")==false && sen3=="" && tg3==""){
          pag=1;
          angRN[2]=acos(cos3N);
          respuesta[2]=true;
          ang3="";
        }
        if((tg3=="")==false && cos3=="" && sen3==""){
          pag=1;
          angRN[2]=atan(tg3N);
          respuesta[2]=true;
          ang3="";
        }
      
        if((sen3=="")==false && (cos3=="")==false && tg3==""){
          str[9]=5;
          str[10]=5;
          strC1[9]=255;
          strC1[10]=255;
          strC2[9]=0;
          strC2[10]=0;
          strC3[9]=0;
          strC3[10]=0;
          ang3="";
        }
        
        if((sen3=="")==false && (tg3=="")==false && cos3==""){ //seno+tan
          str[9]=5;
          str[11]=5;
          strC1[9]=255;
          strC1[11]=255;
          strC2[9]=0;
          strC2[11]=0;
          strC3[9]=0;
          strC3[11]=0;
          ang3="";
        }
        
        if((tg3=="")==false && (cos3=="")==false && sen3==""){ //cos+tan
          str[11]=5;
          str[10]=5;
          strC1[11]=255;
          strC1[10]=255;
          strC2[11]=0;
          strC2[10]=0;
          strC3[11]=0;
          strC3[10]=0;
          ang3="";
        }
        if((tg3=="")==false && (cos3=="")==false && (sen3=="")==false){ //cos+tan
          str[9]=5;
          str[10]=5;
          str[11]=5;
          strC1[9]=255;
          strC1[10]=255;
          strC1[11]=255;
          strC2[9]=0;
          strC2[10]=0;
          strC2[11]=0;
          strC3[9]=0;
          strC3[10]=0;
          strC3[11]=0;
          ang3="";
        }
  }
}