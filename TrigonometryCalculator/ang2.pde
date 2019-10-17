String ang2 = "";
float ang2N;

class ang2{
  void caja(){
    //println(ang2N);
    rectMode(CENTER);
    noFill();
    strokeWeight(str[1]);  
    stroke(strC1[1],strC2[1],strC3[1]);
    rect((width/4)*2,height/6,100,50);
    textAlign(CENTER);   
    text("ángulo B",(width/4)*2,(height/6)-40);
    text(ang2,(width/4)*2,(height/6)+7);
    
    strokeWeight(3);
    stroke(0);
    line(((width/4)*2)-100,(height/6)+40,((width/4)*2)+100,(height/6)+40);
  }
  void teclado(){
    if(mouseX>=((width/4)*2)-50 && mouseX<=((width/4)*2)+50 && mouseY>=(height/6)-25 && mouseY<=(height/6)+25){
      str[1]=5;
      if(keyPressed){
        ang2N=int(ang2);
        if(key == '1'){
          ang2+="1";//int(ang2)
          delay(200);
      }
      if(key == '2'){
          ang2+="2";//int(ang2)
          delay(200);
      }
      if(key == '3'){
          ang2+="3";//int(ang2)
          delay(200);
      }
      if(key == '4'){
          ang2+="4";//int(ang2)
          delay(200);
      }
      if(key == '5'){
          ang2+="5";//int(ang2)
          delay(200);
      }
      if(key == '6'){
          ang2+="6";//int(ang2)
          delay(200);
      }
      if(key == '7'){
          ang2+="7";//int(ang2)
          delay(200);
      }
      if(key == '8'){
          ang2+="8";//int(ang2)
          delay(200);
      }
      if(key == '9'){
          ang2+="9";//int(ang2)
          delay(200);
      }
      if(key == '0'){
          ang2+="0";//int(ang2)
          delay(200);
      }
      if(key == '.'){
          ang2+=".";//int(sen2)
          delay(200);
      }
      if(int(ang2)>0){
      if(key == '-'){
          ang2="-"+ang2;//int(ang2)
          delay(200);
      }
      }
      if(int(ang2)>360){
        ang2="360";
      }
      if(int(ang2)<-360){
        ang2="-360";
      }
      if(key==BACKSPACE){
        ang2="";
      }
    }
    }else{
      str[1]=1;
    }
  }
  void answer(){
    if(modeT==1){
      if((lado1=="")==false || (lado2=="")==false || (lado3=="")==false){
       pag=1;
       respuestaLsol[0]=90;
       respuestaL[0]=true;
       ang2="";
        }
    }
        
        if(modeT==0){
        if((lado1=="")==false && (lado2=="")==false && lado3==""){
          pag=1;
          angRN[0]=asin(float(lado2)/float(lado1));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="")==false && (lado2=="") && (lado3=="")==false){
          pag=1;
          angRN[0]=acos(float(lado3)/float(lado1));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="") && (lado2=="")==false && (lado3=="")==false){
          pag=1;
          angRN[0]=atan(float(lado2)/float(lado3));
          respuesta[0]=true;
          ang2="";
        }
        }
        
        if(modeT==2){
        if((lado1=="")==false && (lado2=="")==false && lado3==""){
          pag=1;
          angRN[0]=atan(float(lado2)/float(lado1));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="")==false && (lado2=="") && (lado3=="")==false){
          pag=1;
          angRN[0]=acos(float(lado1)/float(lado3));
          respuesta[0]=true;
          ang2="";
        }
        if((lado1=="") && (lado2=="")==false && (lado3=="")==false){
          pag=1;
          angRN[0]=asin(float(lado2)/float(lado3));
          respuesta[0]=true;
          ang2="";
        }
        }
        
        
        
        
        
        
    if(sen2=="" && cos2=="" && tg2==""){
          str[6]=5;
          str[7]=5;
          str[8]=5;
          ang2="";
        }
        if((sen2=="")==false && cos2=="" && tg2==""){
          pag=1;
          angRN[1]=asin(sen2N);
          respuesta[1]=true;
          ang2="";
        }
        if((cos2=="")==false && sen2=="" && tg2==""){
          pag=1;
          angRN[1]=acos(cos2N);
          respuesta[1]=true;
          ang2="";
        }
        if((tg2=="")==false && cos2=="" && sen2==""){
          pag=1;
          angRN[1]=atan(tg2N);
          respuesta[1]=true;
          ang2="";
        }
        
        if((sen2=="")==false && (cos2=="")==false && tg2==""){
          str[6]=5;
          str[7]=5;
          strC1[6]=255;
          strC1[7]=255;
          strC2[6]=0;
          strC2[7]=0;
          strC3[6]=0;
          strC3[7]=0;
          ang2="";
        }
        
        if((sen2=="")==false && (tg2=="")==false && cos2==""){ //seno+tan
          str[6]=5;
          str[8]=5;
          strC1[6]=255;
          strC1[8]=255;
          strC2[6]=0;
          strC2[8]=0;
          strC3[6]=0;
          strC3[8]=0;
          ang2="";
        }
        
        if((tg2=="")==false && (cos2=="")==false && sen2==""){ //cos+tan
          str[8]=5;
          str[7]=5;
          strC1[8]=255;
          strC1[7]=255;
          strC2[8]=0;
          strC2[7]=0;
          strC3[8]=0;
          strC3[7]=0;
          ang2="";
        }
        if((tg2=="")==false && (cos2=="")==false && (sen2=="")==false){ //cos+tan
          str[6]=5;
          str[7]=5;
          str[8]=5;
          strC1[6]=255;
          strC1[7]=255;
          strC1[8]=255;
          strC2[6]=0;
          strC2[7]=0;
          strC2[8]=0;
          strC3[6]=0;
          strC3[7]=0;
          strC3[8]=0;
          ang2="";
      }
  }
}