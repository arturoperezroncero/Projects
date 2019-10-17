String sen1 = "";
float sen1N;

String cos1 = "";
float cos1N;

String tg1 = "";
float tg1N;

boolean error;
class fun1{
  void caja(){
    //println(sen1N);
    rectMode(CENTER);
    noFill();
    strokeWeight(str[3]); 
    stroke(strC1[3],strC2[3],strC3[3]);
    rect(width/4,(height/6)*2,100,50);
    textAlign(CENTER);   
    text("sen",width/4,((height/6)*2)-40);
    text(sen1,width/4,((height/6)*2)+7);
    
    rectMode(CENTER);
    noFill();
    strokeWeight(str[4]);  
    stroke(strC1[4],strC2[4],strC3[4]);
    rect(width/4,(height/6)*3,100,50);
    textAlign(CENTER);   
    text("cos",width/4,((height/6)*3)-40);
    text(cos1,width/4,((height/6)*3)+7);
    
    rectMode(CENTER);
    noFill();
    strokeWeight(str[5]); 
    stroke(strC1[5],strC2[5],strC3[5]);
    rect(width/4,(height/6)*4,100,50);
    textAlign(CENTER);   
    text("tg",width/4,((height/6)*4)-40);
    text(tg1,width/4,((height/6)*4)+7);
  }
  void teclado(){
    if(mouseX>=(width/4)-50 && mouseX<=(width/4)+50 && mouseY>=((height/6)*2)-25 && mouseY<=((height/6)*2)+25){
      str[3]=5;
      if(keyPressed){
        if(key == '1'){
          sen1+="1";//int(sen1)
          delay(200);
      }
      if(key == '2'){
          sen1+="2";//int(sen1)
          delay(200);
      }
      if(key == '3'){
          sen1+="3";//int(sen1)
          delay(200);
      }
      if(key == '4'){
          sen1+="4";//int(sen1)
          delay(200);
      }
      if(key == '5'){
          sen1+="5";//int(sen1)
          delay(200);
      }
      if(key == '6'){
          sen1+="6";//int(sen1)
          delay(200);
      }
      if(key == '7'){
          sen1+="7";//int(sen1)
          delay(200);
      }
      if(key == '8'){
          sen1+="8";//int(sen1)
          delay(200);
      }
      if(key == '9'){
          sen1+="9";//int(sen1)
          delay(200);
      }
      if(key == '0'){
          sen1+="0";//int(sen1)
          delay(200);
      }
      if(key == '.'){
          sen1+=".";//int(sen1)
          delay(200);
      }
      if(float(sen1)>0){
      if(key == '-'){
          sen1="-"+sen1;//float(sen1)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        sen1="";
      }
    }
    }else{
      str[3]=1;
    }
    
    if(mouseX>=(width/4)-50 && mouseX<=(width/4)+50 && mouseY>=((height/6)*3)-25 && mouseY<=((height/6)*3)+25){
      str[4]=5;
      if(keyPressed){
        if(key == '1'){
          cos1+="1";//float(cos1)
          delay(200);
      }
      if(key == '2'){
          cos1+="2";//int(cos1)
          delay(200);
      }
      if(key == '3'){
          cos1+="3";//int(cos1)
          delay(200);
      }
      if(key == '4'){
          cos1+="4";//int(cos1)
          delay(200);
      }
      if(key == '5'){
          cos1+="5";//int(cos1)
          delay(200);
      }
      if(key == '6'){
          cos1+="6";//int(cos1)
          delay(200);
      }
      if(key == '7'){
          cos1+="7";//int(cos1)
          delay(200);
      }
      if(key == '8'){
          cos1+="8";//int(cos1)
          delay(200);
      }
      if(key == '9'){
          cos1+="9";//int(cos1)
          delay(200);
      }
      if(key == '0'){
          cos1+="0";//int(cos1)
          delay(200);
      }
      if(key == '.'){
          cos1+=".";//int(sen1)
          delay(200);
      }
      if(float(cos1)>0){
      if(key == '-'){
          cos1="-"+cos1;//int(cos1)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        cos1="";
      }
    }
    }else{
      str[4]=1;
    }
    
    if(mouseX>=(width/4)-50 && mouseX<=(width/4)+50 && mouseY>=((height/6)*4)-25 && mouseY<=((height/6)*4)+25){
      str[5]=5;
      if(keyPressed){
        if(key == '1'){
          tg1+="1";//float(tg1)
          delay(200);
      }
      if(key == '2'){
          tg1+="2";//int(tg1)
          delay(200);
      }
      if(key == '3'){
          tg1+="3";//int(tg1)
          delay(200);
      }
      if(key == '4'){
          tg1+="4";//int(tg1)
          delay(200);
      }
      if(key == '5'){
          tg1+="5";//int(tg1)
          delay(200);
      }
      if(key == '6'){
          tg1+="6";//int(tg1)
          delay(200);
      }
      if(key == '7'){
          tg1+="7";//int(tg1)
          delay(200);
      }
      if(key == '8'){
          tg1+="8";//int(tg1)
          delay(200);
      }
      if(key == '9'){
          tg1+="9";//int(tg1)
          delay(200);
      }
      if(key == '0'){
          tg1+="0";//int(tg1)
          delay(200);
      }
      if(key == '.'){
          tg1+=".";//int(sen1)
          delay(200);
      }
      if(float(tg1)>0){
      if(key == '-'){
          tg1="-"+tg1;//int(tg1)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        tg1="";
      }
    }
    }else{
      str[5]=1;
    }
    sen1N=float(sen1);
    if(float(sen1)>1){
        sen1="1";
      }
      if(float(sen1)<-1){
        sen1="-1";
      }
      
    cos1N=float(cos1);
    if((cos1N)>1){
        cos1="1";
      }
      if((cos1N)<-1){
        cos1="-1";
      }
      
    tg1N=float(tg1);
  }
  void answer1(){
  
    if(ang1=="" && cos1=="" && tg1==""){
          str[0]=5;
          str[4]=5;
          str[5]=5;
          sen1="";
        }
        if((ang1=="")==false && cos1=="" && tg1==""){
          pag=1;
          senRN[0]=sin(radians(float(ang1)));
          respuesta[3]=true;
          sen1="";
        }
        if((cos1=="")==false && ang1=="" && tg1==""){
          pag=1;
          senRN[0]=sqrt(1-pow(float(cos1),2));
          respuesta[3]=true;
          sen1="";
        }
        if((tg1=="")==false && cos1=="" && sen1==""){
          pag=1;
          senRN[0]=sin(atan(float(tg1)));;
          respuesta[3]=true;
          sen1="";
        }
        
        if((ang1=="")==false && (cos1=="")==false && tg1==""){
          str[0]=5;
          str[4]=5;
          strC1[0]=255;
          strC1[4]=255;
          strC2[0]=0;
          strC2[4]=0;
          strC3[0]=0;
          strC3[4]=0;
          sen1="";
        }
        
        if((ang1=="")==false && (tg1=="")==false && cos1==""){ //seno+tan
          str[0]=5;
          str[5]=5;
          strC1[0]=255;
          strC1[5]=255;
          strC2[0]=0;
          strC2[5]=0;
          strC3[0]=0;
          strC3[5]=0;
          sen1="";
        }
        
        if((tg1=="")==false && (cos1=="")==false && ang1==""){ //cos+tan
          str[5]=5;
          str[4]=5;
          strC1[5]=255;
          strC1[4]=255;
          strC2[5]=0;
          strC2[4]=0;
          strC3[5]=0;
          strC3[4]=0;
          sen1="";
        }
        if((tg1=="")==false && (cos1=="")==false && (ang1=="")==false){ //cos+tan
          str[0]=5;
          str[4]=5;
          str[5]=5;
          strC1[0]=255;
          strC1[4]=255;
          strC1[5]=255;
          strC2[0]=0;
          strC2[4]=0;
          strC2[5]=0;
          strC3[0]=0;
          strC3[4]=0;
          strC3[5]=0;
          sen1="";
        }
  }
  void answer2(){
    if(ang1=="" && sen1=="" && tg1==""){
          str[0]=5;
          str[3]=5;
          str[5]=5;
          cos1="";
        }
        if((ang1=="")==false && sen1=="" && tg1==""){
          pag=1;
          cosRN[0]=cos(radians(float(ang1)));
          respuesta[4]=true;
          cos1="";
        }
        if((sen1=="")==false && ang1=="" && tg1==""){
          pag=1;
          cosRN[0]=sqrt(1-pow(float(sen1),2));
          respuesta[7]=true;
          cos1="";
        }
        if((tg1=="")==false && ang1=="" && sen1==""){
          pag=1;
          cosRN[0]=cos(atan(float(tg1)));;
          respuesta[10]=true;
          cos1="";
        }
        
        if((ang1=="")==false && (sen1=="")==false && tg1==""){
          str[0]=5;
          str[3]=5;
          strC1[0]=255;
          strC1[3]=255;
          strC2[0]=0;
          strC2[3]=0;
          strC3[0]=0;
          strC3[3]=0;
          cos1="";
        }
        
        if((ang1=="")==false && (tg1=="")==false && sen1==""){ //seno+tan
          str[0]=5;
          str[5]=5;
          strC1[0]=255;
          strC1[5]=255;
          strC2[0]=0;
          strC2[5]=0;
          strC3[0]=0;
          strC3[5]=0;
          cos1="";
        }
        
        if((tg1=="")==false && (sen1=="")==false && ang1==""){ //cos+tan
          str[5]=5;
          str[3]=5;
          strC1[5]=255;
          strC1[3]=255;
          strC2[5]=0;
          strC2[3]=0;
          strC3[5]=0;
          strC3[3]=0;
          cos1="";
        }
        if((tg1=="")==false && (cos1=="")==false && (ang1=="")==false){ //cos+tan
          str[0]=5;
          str[3]=5;
          str[5]=5;
          strC1[0]=255;
          strC1[3]=255;
          strC1[5]=255;
          strC2[0]=0;
          strC2[3]=0;
          strC2[5]=0;
          strC3[0]=0;
          strC3[3]=0;
          strC3[5]=0;
          cos1="";
        }
  }
  void answer3(){
    if(ang1=="" && sen1=="" && cos1==""){
          str[0]=5;
          str[3]=5;
          str[4]=5;
          tg1="";
          error=false;
        }
        if((ang1=="")==false && sen1=="" && cos1==""){
          if(float(ang1)==90 || float(ang1)==-90 || float(ang1)==270 || float(ang1)==-270){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[0]=tan(radians(float(ang1)));
          respuesta[5]=true;
          tg1="";
          }
        }
        if((sen1=="")==false && ang1=="" && cos1==""){
          if(float(sen1)==1 || float(sen1)==-1){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[0]=tan(asin(float(sen1)));
          respuesta[8]=true;
          tg1="";
          }
        }
        if((cos1=="")==false && ang1=="" && sen1==""){
          if(float(cos1)==0){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[0]=tan(acos(float(cos1)));
          respuesta[11]=true;
          tg1="";
          }
        }
        
        if((ang1=="")==false && (sen1=="")==false && cos1==""){
          str[0]=5;
          str[3]=5;
          strC1[0]=255;
          strC1[3]=255;
          strC2[0]=0;
          strC2[3]=0;
          strC3[0]=0;
          strC3[3]=0;
          tg1="";
        }
        
        if((ang1=="")==false && (cos1=="")==false && sen1==""){ //seno+tan
          str[0]=5;
          str[4]=5;
          strC1[0]=255;
          strC1[4]=255;
          strC2[0]=0;
          strC2[4]=0;
          strC3[0]=0;
          strC3[4]=0;
          tg1="";
        }
        
        if((cos1=="")==false && (sen1=="")==false && ang1==""){ //cos+tan
          str[4]=5;
          str[3]=5;
          strC1[4]=255;
          strC1[3]=255;
          strC2[4]=0;
          strC2[3]=0;
          strC3[4]=0;
          strC3[3]=0;
          tg1="";
        }
        if((tg1=="")==false && (cos1=="")==false && (ang1=="")==false){ //cos+tan
          str[0]=5;
          str[3]=5;
          str[4]=5;
          strC1[0]=255;
          strC1[3]=255;
          strC1[4]=255;
          strC2[0]=0;
          strC2[3]=0;
          strC2[4]=0;
          strC3[0]=0;
          strC3[3]=0;
          strC3[4]=0;
          tg1="";
        }
  }
}