String sen2 = "";
float sen2N;

String cos2 = "";
float cos2N;

String tg2 = "";
float tg2N;

class fun2{
  void caja(){
    //println(sen2N);
    rectMode(CENTER);
    noFill();
    strokeWeight(str[6]); 
    stroke(strC1[6],strC2[6],strC3[6]);
    rect((width/4)*2,(height/6)*2,100,50);
    textAlign(CENTER);   
    text("sen",(width/4)*2,((height/6)*2)-40);
    text(sen2,(width/4)*2,((height/6)*2)+7);
    
    rectMode(CENTER);
    noFill();
    strokeWeight(str[7]); 
    stroke(strC1[7],strC2[7],strC3[7]);
    rect((width/4)*2,(height/6)*3,100,50);
    textAlign(CENTER);   
    text("cos",(width/4)*2,((height/6)*3)-40);
    text(cos2,(width/4)*2,((height/6)*3)+7);
    
    rectMode(CENTER);
    noFill();
    strokeWeight(str[8]);
    stroke(strC1[8],strC2[8],strC3[8]);
    rect((width/4)*2,(height/6)*4,100,50);
    textAlign(CENTER);   
    text("tg",(width/4)*2,((height/6)*4)-40);
    text(tg2,(width/4)*2,((height/6)*4)+7);
  }
  void teclado(){
    if(mouseX>=((width/4)*2)-50 && mouseX<=((width/4)*2)+50 && mouseY>=((height/6)*2)-25 && mouseY<=((height/6)*2)+25){
      str[6]=5;
      if(keyPressed){
        if(key == '1'){
          sen2+="1";//int(sen2)
          delay(200);
      }
      if(key == '2'){
          sen2+="2";//int(sen2)
          delay(200);
      }
      if(key == '3'){
          sen2+="3";//int(sen2)
          delay(200);
      }
      if(key == '4'){
          sen2+="4";//int(sen2)
          delay(200);
      }
      if(key == '5'){
          sen2+="5";//int(sen2)
          delay(200);
      }
      if(key == '6'){
          sen2+="6";//int(sen2)
          delay(200);
      }
      if(key == '7'){
          sen2+="7";//int(sen2)
          delay(200);
      }
      if(key == '8'){
          sen2+="8";//int(sen2)
          delay(200);
      }
      if(key == '9'){
          sen2+="9";//int(sen2)
          delay(200);
      }
      if(key == '0'){
          sen2+="0";//int(sen2)
          delay(200);
      }
      if(key == '.'){
          sen2+=".";//int(sen2)
          delay(200);
      }
      if(float(sen2)>0){
      if(key == '-'){
          sen2="-"+sen2;//float(sen2)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        sen2="";
      }
    }
    }else{
      str[6]=1;
    }
    
    if(mouseX>=((width/4)*2)-50 && mouseX<=((width/4)*2)+50 && mouseY>=((height/6)*3)-25 && mouseY<=((height/6)*3)+25){
      str[7]=5;
      if(keyPressed){
        if(key == '1'){
          cos2+="1";//float(cos2)
          delay(200);
      }
      if(key == '2'){
          cos2+="2";//int(cos2)
          delay(200);
      }
      if(key == '3'){
          cos2+="3";//int(cos2)
          delay(200);
      }
      if(key == '4'){
          cos2+="4";//int(cos2)
          delay(200);
      }
      if(key == '5'){
          cos2+="5";//int(cos2)
          delay(200);
      }
      if(key == '6'){
          cos2+="6";//int(cos2)
          delay(200);
      }
      if(key == '7'){
          cos2+="7";//int(cos2)
          delay(200);
      }
      if(key == '8'){
          cos2+="8";//int(cos2)
          delay(200);
      }
      if(key == '9'){
          cos2+="9";//int(cos2)
          delay(200);
      }
      if(key == '0'){
          cos2+="0";//int(cos2)
          delay(200);
      }
      if(key == '.'){
          cos2+=".";//int(sen2)
          delay(200);
      }
      if(float(cos2)>0){
      if(key == '-'){
          cos2="-"+cos2;//int(cos2)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        cos2="";
      }
    }
    }else{
      str[7]=1;
    }
    
    if(mouseX>=((width/4)*2)-50 && mouseX<=((width/4)*2)+50 && mouseY>=((height/6)*4)-25 && mouseY<=((height/6)*4)+25){
      str[8]=5;
      if(keyPressed){
        if(key == '1'){
          tg2+="1";//float(tg2)
          delay(200);
      }
      if(key == '2'){
          tg2+="2";//int(tg2)
          delay(200);
      }
      if(key == '3'){
          tg2+="3";//int(tg2)
          delay(200);
      }
      if(key == '4'){
          tg2+="4";//int(tg2)
          delay(200);
      }
      if(key == '5'){
          tg2+="5";//int(tg2)
          delay(200);
      }
      if(key == '6'){
          tg2+="6";//int(tg2)
          delay(200);
      }
      if(key == '7'){
          tg2+="7";//int(tg2)
          delay(200);
      }
      if(key == '8'){
          tg2+="8";//int(tg2)
          delay(200);
      }
      if(key == '9'){
          tg2+="9";//int(tg2)
          delay(200);
      }
      if(key == '0'){
          tg2+="0";//int(tg2)
          delay(200);
      }
      if(key == '.'){
          tg2+=".";//int(sen2)
          delay(200);
      }
      if(float(tg2)>0){
      if(key == '-'){
          tg2="-"+tg2;//int(tg2)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        tg2="";
      }
    }
    }else{
      str[8]=1;
    }
    sen2N=float(sen2);
    if(float(sen2)>1){
        sen2="1";
      }
      if(float(sen2)<-1){
        sen2="-1";
      }
      
    cos2N=float(cos2);
    if((cos2N)>1){
        cos2="1";
      }
      if((cos2N)<-1){
        cos2="-1";
      }
      
    tg2N=float(tg2);
  }
  void answer1(){
    if(ang2=="" && cos2=="" && tg2==""){
          str[1 ]=5;
          str[7]=5;
          str[8]=5;
          sen2="";
        }
        if((ang2=="")==false && cos2=="" && tg2==""){
          pag=1;
          senRN[1]=sin(radians(float(ang2)));
          respuesta[12]=true;
          sen2="";
        }
        if((cos2=="")==false && ang2=="" && tg2==""){
          pag=1;
          senRN[1]=sqrt(1-pow(float(cos2),2));
          respuesta[15]=true;
          sen2="";
        }
        if((tg2=="")==false && cos2=="" && sen2==""){
          pag=1;
          senRN[1]=sin(atan(float(tg2)));;
          respuesta[18]=true;
          sen2="";
        }
        
        if((ang2=="")==false && (cos2=="")==false && tg2==""){
          str[1]=5;
          str[7]=5;
          strC1[1]=255;
          strC1[7]=255;
          strC2[1]=0;
          strC2[7]=0;
          strC3[1]=0;
          strC3[7]=0;
          sen2="";
        }
        
        if((ang2=="")==false && (tg2=="")==false && cos2==""){ //seno+tan
          str[1]=5;
          str[8]=5;
          strC1[1]=255;
          strC1[8]=255;
          strC2[1]=0;
          strC2[8]=0;
          strC3[1]=0;
          strC3[8]=0;
          sen2="";
        }
        
        if((tg2=="")==false && (cos2=="")==false && ang2==""){ //cos+tan
          str[7]=5;
          str[8]=5;
          strC1[7]=255;
          strC1[8]=255;
          strC2[7]=0;
          strC2[8]=0;
          strC3[7]=0;
          strC3[8]=0;
          sen2="";
        }
        if((tg2=="")==false && (cos2=="")==false && (ang2=="")==false){ //cos+tan
          str[1]=5;
          str[7]=5;
          str[8]=5;
          strC1[1]=255;
          strC1[7]=255;
          strC1[8]=255;
          strC2[1]=0;
          strC2[7]=0;
          strC2[8]=0;
          strC3[1]=0;
          strC3[7]=0;
          strC3[8]=0;
          sen2="";
        }
  }
  void answer2(){
    if(ang2=="" && sen2=="" && tg2==""){
          str[1]=5;
          str[6]=5;
          str[8]=5;
          cos2="";
        }
        if((ang2=="")==false && sen2=="" && tg2==""){
          pag=1;
          cosRN[1]=cos(radians(float(ang2)));
          respuesta[13]=true;
          cos2="";
        }
        if((sen2=="")==false && ang2=="" && tg2==""){
          pag=1;
          cosRN[1]=sqrt(1-pow(float(sen2),2));
          respuesta[16]=true;
          cos2="";
        }
        if((tg2=="")==false && ang2=="" && sen2==""){
          pag=1;
          cosRN[1]=cos(atan(float(tg2)));;
          respuesta[19]=true;
          cos2="";
        }
        
        if((ang2=="")==false && (sen2=="")==false && tg2==""){
          str[1]=5;
          str[6]=5;
          strC1[1]=255;
          strC1[6]=255;
          strC2[1]=0;
          strC2[6]=0;
          strC3[1]=0;
          strC3[6]=0;
          cos2="";
        }
        
        if((ang2=="")==false && (tg2=="")==false && sen2==""){ //seno+tan
          str[1]=5;
          str[8]=5;
          strC1[1]=255;
          strC1[8]=255;
          strC2[1]=0;
          strC2[8]=0;
          strC3[1]=0;
          strC3[8]=0;
          cos2="";
        }
        
        if((tg2=="")==false && (sen2=="")==false && ang2==""){ //cos+tan
          str[6]=5;
          str[8]=5;
          strC1[6]=255;
          strC1[8]=255;
          strC2[6]=0;
          strC2[8]=0;
          strC3[6]=0;
          strC3[8]=0;
          cos2="";
        }
        if((tg2=="")==false && (cos2=="")==false && (ang2=="")==false){ //cos+tan
          str[1]=5;
          str[6]=5;
          str[8]=5;
          strC1[1]=255;
          strC1[6]=255;
          strC1[8]=255;
          strC2[1]=0;
          strC2[6]=0;
          strC2[8]=0;
          strC3[1]=0;
          strC3[6]=0;
          strC3[8]=0;
          cos2="";
        }
  }
  void answer3(){
    if(ang2=="" && sen2=="" && cos2==""){
          str[1]=5;
          str[6]=5;
          str[7]=5;
          tg2="";
          error=false;
        }
        if((ang2=="")==false && sen2=="" && cos2==""){
          if(float(ang2)==90 || float(ang2)==-90 || float(ang2)==270 || float(ang2)==-270){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[1]=tan(radians(float(ang2)));
          respuesta[5]=true;
          tg2="";
          }
        }
        if((sen2=="")==false && ang2=="" && cos2==""){
          if(float(sen2)==1 || float(sen2)==-1){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[1]=tan(asin(float(sen2)));
          respuesta[8]=true;
          tg2="";
          }
        }
        if((cos2=="")==false && ang2=="" && sen2==""){
          if(float(cos2)==0){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[1]=tan(acos(float(cos2)));
          respuesta[11]=true;
          tg2="";
          }
        }
        
        if((ang2=="")==false && (sen2=="")==false && cos2==""){
          str[1]=5;
          str[6]=5;
          strC1[1]=255;
          strC1[6]=255;
          strC2[1]=0;
          strC2[6]=0;
          strC3[1]=0;
          strC3[6]=0;
          tg2="";
        }
        
        if((ang2=="")==false && (cos2=="")==false && sen2==""){ //seno+tan
          str[1]=5;
          str[7]=5;
          strC1[1]=255;
          strC1[7]=255;
          strC2[1]=0;
          strC2[7]=0;
          strC3[1]=0;
          strC3[7]=0;
          tg2="";
        }
        
        if((cos2=="")==false && (sen2=="")==false && ang2==""){ //cos+tan
          str[6]=5;
          str[7]=5;
          strC1[6]=255;
          strC1[7]=255;
          strC2[6]=0;
          strC2[7]=0;
          strC3[6]=0;
          strC3[7]=0;
          tg2="";
        }
        if((sen2=="")==false && (cos2=="")==false && (ang2=="")==false){ //cos+tan
          str[1]=5;
          str[6]=5;
          str[7]=5;
          strC1[1]=255;
          strC1[6]=255;
          strC1[7]=255;
          strC2[1]=0;
          strC2[6]=0;
          strC2[7]=0;
          strC3[1]=0;
          strC3[6]=0;
          strC3[7]=0;
          tg2="";
        }
  }
}