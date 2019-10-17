String ang1 = "";
float ang1N;

class ang1{
  void caja(){
    //println(ang1N);
    rectMode(CENTER);
    noFill();
    strokeWeight(str[0]);
    stroke(strC1[0],strC2[0],strC3[0]);
    rect(width/4,height/6,100,50);
    textAlign(CENTER);   
    text("ángulo A",width/4,(height/6)-40);
    text(ang1,width/4,(height/6)+7);
    
    strokeWeight(3);
    stroke(0);
    line((width/4)-100,(height/6)+40,(width/4)+100,(height/6)+40);
  }
  void teclado(){
    if(mouseX>=(width/4)-50 && mouseX<=(width/4)+50 && mouseY>=(height/6)-25 && mouseY<=(height/6  )+25){
      str[0]=5;
      if(keyPressed){
        ang1N=int(ang1);
        if(key == '1'){
          ang1+="1";//int(ang1)
          delay(200);
      }
      if(key == '2'){
          ang1+="2";//int(ang1)
          delay(200);
      }
      if(key == '3'){
          ang1+="3";//int(ang1)
          delay(200);
      }
      if(key == '4'){
          ang1+="4";//int(ang1)
          delay(200);
      }
      if(key == '5'){
          ang1+="5";//int(ang1)
          delay(200);
      }
      if(key == '6'){
          ang1+="6";//int(ang1)
          delay(200);
      }
      if(key == '7'){
          ang1+="7";//int(ang1)
          delay(200);
      }
      if(key == '8'){
          ang1+="8";//int(ang1)
          delay(200);
      }
      if(key == '9'){
          ang1+="9";//int(ang1)
          delay(200);
      }
      if(key == '0'){
          ang1+="0";//int(ang1)
          delay(200);
      }
      if(key == '.'){
          ang1+=".";//int(sen2)
          delay(200);
      }
      if(int(ang1)>0){
      if(key == '-'){
          ang1="-"+ang1;//int(ang1)
          delay(200);
      }
      }
      if(int(ang1)>360){
        ang1="360";
      }
      if(int(ang1)<-360){
        ang1="-360";
      }
      if(key==BACKSPACE){
        ang1="";
      }
    }
    }else{
      str[0]=1;
    }
  }
  void answer(){
    if(modeT==0){
      if((lado1=="")==false || (lado2=="")==false || (lado3=="")==false){
       pag=1;
       respuestaLsol[0]=90;
       respuestaL[0]=true;
       ang1="";
        }
    }
        
        if(modeT==1){
        if((lado1=="")==false && (lado2=="")==false && lado3==""){
          pag=1;
          angRN[0]=asin(float(lado1)/float(lado2));
          respuesta[0]=true;
          ang1="";
        }
        if((lado1=="")==false && (lado2=="") && (lado3=="")==false){
          pag=1;
          angRN[0]=atan(float(lado1)/float(lado3));
          respuesta[0]=true;
          ang1="";
        }
        if((lado1=="") && (lado2=="")==false && (lado3=="")==false){
          pag=1;
          angRN[0]=acos(float(lado3)/float(lado2));
          respuesta[0]=true;
          ang1="";
        }
        }
        
        if(modeT==2){
        if((lado1=="")==false && (lado2=="")==false && lado3==""){
          pag=1;
          angRN[0]=atan(float(lado1)/float(lado2));
          respuesta[0]=true;
          ang1="";
        }
        if((lado1=="")==false && (lado2=="") && (lado3=="")==false){
          pag=1;
          angRN[0]=asin(float(lado1)/float(lado3));
          respuesta[0]=true;
          ang1="";
        }
        if((lado1=="") && (lado2=="")==false && (lado3=="")==false){
          pag=1;
          angRN[0]=acos(float(lado2)/float(lado3));
          respuesta[0]=true;
          ang1="";
        }
        }
        
        
        
        
    if(sen1=="" && cos1=="" && tg1==""){
          str[3]=5;
          str[4]=5;
          str[5]=5;
        }
        if((sen1=="")==false && cos1=="" && tg1==""){
          pag=1;
          angRN[0]=asin(sen1N);
          respuesta[0]=true;
          ang1="";
        }
        if((cos1=="")==false && sen1=="" && tg1==""){
          pag=1;
          angRN[0]=acos(cos1N);
          respuesta[0]=true;
          ang1="";
        }
        if((tg1=="")==false && cos1=="" && sen1==""){
          pag=1;
          angRN[0]=atan(tg1N);
          respuesta[0]=true;
          ang1="";
        }
        
        if((sen1=="")==false && (cos1=="")==false && tg1==""){
          str[3]=5;
          str[4]=5;
          strC1[3]=255;
          strC1[4]=255;
          strC2[3]=0;
          strC2[4]=0;
          strC3[3]=0;
          strC3[4]=0;
          ang1="";
        //  if(degrees(asin(sen1N))== -degrees((acos(cos1N))) || degrees(asin(sen1N))== degrees((acos(cos1N))) || -degrees(asin(sen1N))== degrees((acos(cos1N)))){
        //    pag=1;
        //    angRN[0]=asin(sen1N);
        //    respuesta[0]=true;
        //  }else if(cos1N==-1 && sen1N==0){
        //    pag=1;
        //    angRN[0]=acos(-1);
        //    respuesta[0]=true;
        //  }
        }
        
        if((sen1=="")==false && (tg1=="")==false && cos1==""){ //seno+tan
          str[3]=5;
          str[5]=5;
          strC1[3]=255;
          strC1[5]=255;
          strC2[3]=0;
          strC2[5]=0;
          strC3[3]=0;
          strC3[5]=0;
          ang1="";
        //  if(degrees(asin(sen1N))== -degrees((atan(tg1N))) || degrees(asin(sen1N))== degrees((atan(tg1N))) || -degrees(asin(sen1N))== degrees((atan(tg1N)))){
        //    pag=1;
        //    angRN[0]=asin(sen1N);
        //    respuesta[0]=true;
        //  }
        }
        
        if((tg1=="")==false && (cos1=="")==false && sen1==""){ //cos+tan
          str[5]=5;
          str[4]=5;
          strC1[5]=255;
          strC1[4]=255;
          strC2[5]=0;
          strC2[4]=0;
          strC3[5]=0;
          strC3[4]=0;
          ang1="";
        //  if(degrees(atan(tg1N))== -degrees((acos(cos1N))) || degrees(atan(tg1N))== degrees((acos(cos1N))) || -degrees(atan(tg1N))== degrees((acos(cos1N)))){
        //    pag=1;
        //    angRN[0]=acos(cos1N);
        //    respuesta[0]=true;
        //  }
        }
        if((tg1=="")==false && (cos1=="")==false && (sen1=="")==false){ //cos+tan
          str[3]=5;
          str[4]=5;
          str[5]=5;
          strC1[3]=255;
          strC1[4]=255;
          strC1[5]=255;
          strC2[3]=0;
          strC2[4]=0;
          strC2[5]=0;
          strC3[3]=0;
          strC3[4]=0;
          strC3[5]=0;
          ang1="";
        //  if(degrees(atan(tg1N))== -degrees((acos(cos1N))) || degrees(atan(tg1N))== degrees((acos(cos1N))) 
        //  || -degrees(atan(tg1N))== degrees((asin(sen1N))) || degrees(atan(tg1N))== -degrees((asin(sen1N))) 
        //  || degrees(atan(tg1N))== degrees((asin(sen1N))) || -degrees(atan(tg1N))== degrees((asin(sen1N)))
        //  || degrees(asin(sen1N))== -degrees((acos(cos1N))) || degrees(asin(sen1N))== degrees((acos(cos1N))) 
        //  || -degrees(asin(sen1N))== degrees((acos(cos1N)))){
        //    pag=1;
        //    angRN[0]=acos(cos1N);
        //    respuesta[0]=true;
        //  }
        }
  }
}