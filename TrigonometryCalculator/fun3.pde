String sen3 = "";
float sen3N;

String cos3 = "";
float cos3N;

String tg3 = "";
float tg3N;

class fun3{
  void caja(){
    //println(sen3N);
    rectMode(CENTER);
    noFill();
    strokeWeight(str[9]); 
    stroke(strC1[9],strC2[9],strC3[9]);
    rect((width/4)*3,(height/6)*2,100,50);
    textAlign(CENTER);   
    text("sen",(width/4)*3,((height/6)*2)-40);
    text(sen3,(width/4)*3,((height/6)*2)+7);
    
    rectMode(CENTER);
    noFill();
    strokeWeight(str[10]);
    stroke(strC1[10],strC2[10],strC3[10]);
    rect((width/4)*3,(height/6)*3,100,50);
    textAlign(CENTER);   
    text("cos",(width/4)*3,((height/6)*3)-40);
    text(cos3,(width/4)*3,((height/6)*3)+7);
    
    rectMode(CENTER);
    noFill();
    strokeWeight(str[11]);
    stroke(strC1[11],strC2[11],strC3[11]);
    rect((width/4)*3,(height/6)*4,100,50);
    textAlign(CENTER);   
    text("tg",(width/4)*3,((height/6)*4)-40);
    text(tg3,(width/4)*3,((height/6)*4)+7);
  }
  void teclado(){
    if(mouseX>=((width/4)*3)-50 && mouseX<=((width/4)*3)+50 && mouseY>=((height/6)*2)-25 && mouseY<=((height/6)*2)+25){
      str[9]=5;
      if(keyPressed){
        if(key == '1'){
          sen3+="1";//int(sen3)
          delay(200);
      }
      if(key == '2'){
          sen3+="2";//int(sen3)
          delay(200);
      }
      if(key == '3'){
          sen3+="3";//int(sen3)
          delay(200);
      }
      if(key == '4'){
          sen3+="4";//int(sen3)
          delay(200);
      }
      if(key == '5'){
          sen3+="5";//int(sen3)
          delay(200);
      }
      if(key == '6'){
          sen3+="6";//int(sen3)
          delay(200);
      }
      if(key == '7'){
          sen3+="7";//int(sen3)
          delay(200);
      }
      if(key == '8'){
          sen3+="8";//int(sen3)
          delay(200);
      }
      if(key == '9'){
          sen3+="9";//int(sen3)
          delay(200);
      }
      if(key == '0'){
          sen3+="0";//int(sen3)
          delay(200);
      }
      if(key == '.'){
          sen3+=".";//int(sen3)
          delay(200);
      }
      if(float(sen3)>0){
      if(key == '-'){
          sen3="-"+sen3;//float(sen3)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        sen3="";
      }
    }
    }else{
      str[9]=1;
    }
    
    if(mouseX>=((width/4)*3)-50 && mouseX<=((width/4)*3)+50 && mouseY>=((height/6)*3)-25 && mouseY<=((height/6)*3)+25){
      str[10]=5;
      if(keyPressed){
        if(key == '1'){
          cos3+="1";//float(cos3)
          delay(200);
      }
      if(key == '2'){
          cos3+="2";//int(cos3)
          delay(200);
      }
      if(key == '3'){
          cos3+="3";//int(cos3)
          delay(200);
      }
      if(key == '4'){
          cos3+="4";//int(cos3)
          delay(200);
      }
      if(key == '5'){
          cos3+="5";//int(cos3)
          delay(200);
      }
      if(key == '6'){
          cos3+="6";//int(cos3)
          delay(200);
      }
      if(key == '7'){
          cos3+="7";//int(cos3)
          delay(200);
      }
      if(key == '8'){
          cos3+="8";//int(cos3)
          delay(200);
      }
      if(key == '9'){
          cos3+="9";//int(cos3)
          delay(200);
      }
      if(key == '0'){
          cos3+="0";//int(cos3)
          delay(200);
      }
      if(key == '.'){
          cos3+=".";//int(sen3)
          delay(200);
      }
      if(float(cos3)>0){
      if(key == '-'){
          cos3="-"+cos3;//int(cos3)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        cos3="";
      }
    }
    }else{
      str[10]=1;
    }
    
    if(mouseX>=((width/4)*3)-50 && mouseX<=((width/4)*3)+50 && mouseY>=((height/6)*4)-25 && mouseY<=((height/6)*4)+25){
      str[11]=5;
      if(keyPressed){
        if(key == '1'){
          tg3+="1";//float(tg3)
          delay(200);
      }
      if(key == '2'){
          tg3+="2";//int(tg3)
          delay(200);
      }
      if(key == '3'){
          tg3+="3";//int(tg3)
          delay(200);
      }
      if(key == '4'){
          tg3+="4";//int(tg3)
          delay(200);
      }
      if(key == '5'){
          tg3+="5";//int(tg3)
          delay(200);
      }
      if(key == '6'){
          tg3+="6";//int(tg3)
          delay(200);
      }
      if(key == '7'){
          tg3+="7";//int(tg3)
          delay(200);
      }
      if(key == '8'){
          tg3+="8";//int(tg3)
          delay(200);
      }
      if(key == '9'){
          tg3+="9";//int(tg3)
          delay(200);
      }
      if(key == '0'){
          tg3+="0";//int(tg3)
          delay(200);
      }
      if(key == '.'){
          tg3+=".";//int(sen3)
          delay(200);
      }
      if(float(tg3)>0){
      if(key == '-'){
          tg3="-"+tg3;//int(tg3)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        tg3="";
      }
    }
    }else{
      str[11]=1;
    }
    sen3N=float(sen3);
    if(float(sen3)>1){
        sen3="1";
      }
      if(float(sen3)<-1){
        sen3="-1";
      }
      
    cos3N=float(cos3);
    if((cos3N)>1){
        cos3="1";
      }
      if((cos3N)<-1){
        cos3="-1";
      }
      
    tg3N=float(tg3);
  }
  void answer1(){
  
    if(ang3=="" && cos3=="" && tg3==""){
          str[2]=5;
          str[10]=5;
          str[11]=5;
          sen3="";
        }
        if((ang3=="")==false && cos3=="" && tg3==""){
          pag=1;
          senRN[2]=sin(radians(float(ang3)));
          respuesta[21]=true;
          sen3="";
        }
        if((cos3=="")==false && ang3=="" && tg3==""){
          pag=1;
          senRN[2]=sqrt(1-pow(float(cos3),2));
          respuesta[24]=true;
          sen3="";
        }
        if((tg3=="")==false && cos3=="" && sen3==""){
          pag=1;
          senRN[2]=sin(atan(float(tg3)));;
          respuesta[27]=true;
          sen3="";
        }
        
        if((ang3=="")==false && (cos3=="")==false && tg3==""){
          str[2]=5;
          str[10]=5;
          strC1[2]=255;
          strC1[10]=255;
          strC2[2]=0;
          strC2[10]=0;
          strC3[2]=0;
          strC3[10]=0;
          sen3="";
        }
        
        if((ang3=="")==false && (tg3=="")==false && cos3==""){ //seno+tan
          str[2]=5;
          str[11]=5;
          strC1[2]=255;
          strC1[11]=255;
          strC2[2]=0;
          strC2[11]=0;
          strC3[2]=0;
          strC3[11]=0;
          sen3="";
        }
        
        if((tg3=="")==false && (cos3=="")==false && ang3==""){ //cos+tan
          str[11]=5;
          str[10]=5;
          strC1[11]=255;
          strC1[10]=255;
          strC2[11]=0;
          strC2[10]=0;
          strC3[11]=0;
          strC3[10]=0;
          sen3="";
        }
        if((tg3=="")==false && (cos3=="")==false && (ang3=="")==false){ //cos+tan
          str[2]=5;
          str[10]=5;
          str[11]=5;
          strC1[2]=255;
          strC1[10]=255;
          strC1[11]=255;
          strC2[2]=0;
          strC2[10]=0;
          strC2[11]=0;
          strC3[2]=0;
          strC3[10]=0;
          strC3[11]=0;
          sen3="";
        }
  }
  void answer2(){
    if(ang3=="" && sen3=="" && tg3==""){
          str[2]=5;
          str[9]=5;
          str[11]=5;
          cos3="";
        }
        if((ang3=="")==false && sen3=="" && tg3==""){
          pag=1;
          cosRN[2]=cos(radians(float(ang3)));
          respuesta[22]=true;
          cos3="";
        }
        if((sen3=="")==false && ang3=="" && tg3==""){
          pag=1;
          cosRN[2]=sqrt(1-pow(float(sen3),2));
          respuesta[25]=true;
          cos3="";
        }
        if((tg3=="")==false && ang3=="" && sen3==""){
          pag=1;
          cosRN[2]=cos(atan(float(tg3)));;
          respuesta[28]=true;
          cos3="";
        }
        
        if((ang3=="")==false && (sen3=="")==false && tg3==""){
          str[2]=5;
          str[9]=5;
          strC1[2]=255;
          strC1[9]=255;
          strC2[2]=0;
          strC2[9]=0;
          strC3[2]=0;
          strC3[9]=0;
          cos3="";
        }
        
        if((ang3=="")==false && (tg3=="")==false && sen3==""){ //seno+tan
          str[2]=5;
          str[11]=5;
          strC1[2]=255;
          strC1[11]=255;
          strC2[2]=0;
          strC2[11]=0;
          strC3[2]=0;
          strC3[11]=0;
          cos3="";
        }
        
        if((tg3=="")==false && (sen3=="")==false && ang3==""){ //cos+tan
          str[9]=5;
          str[11]=5;
          strC1[9]=255;
          strC1[11]=255;
          strC2[9]=0;
          strC2[11]=0;
          strC3[9]=0;
          strC3[11]=0;
          cos3="";
        }
        if((tg3=="")==false && (cos3=="")==false && (ang3=="")==false){ //cos+tan
          str[2]=5;
          str[9]=5;
          str[11]=5;
          strC1[2]=255;
          strC1[9]=255;
          strC1[11]=255;
          strC2[2]=0;
          strC2[9]=0;
          strC2[11]=0;
          strC3[2]=0;
          strC3[9]=0;
          strC3[11]=0;
          cos3="";
        }
  }
  void answer3(){
    if(ang3=="" && sen3=="" && cos3==""){
          str[2]=5;
          str[9]=5;
          str[10]=5;
          tg3="";
          error=false;
        }
        if((ang3=="")==false && sen3=="" && cos3==""){
          if(float(ang3)==90 || float(ang3)==-90 || float(ang3)==270 || float(ang3)==-270){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[2]=tan(radians(float(ang3)));
          respuesta[23]=true;
          tg3="";
          }
        }
        if((sen3=="")==false && ang3=="" && cos3==""){
          if(float(sen3)==1 || float(sen3)==-1){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[2]=tan(asin(float(sen3)));
          respuesta[26]=true;
          tg3="";
          }
        }
        if((cos3=="")==false && ang3=="" && sen3==""){
          if(float(cos3)==0){
            error=true;
            pag=1;
          }else{
            error=false;
          pag=1;
          tgRN[2]=tan(acos(float(cos3)));
          respuesta[29]=true;
          tg3="";
          }
        }
        
        if((ang3=="")==false && (sen3=="")==false && cos3==""){
          str[2]=5;
          str[9]=5;
          strC1[2]=255;
          strC1[9]=255;
          strC2[2]=0;
          strC2[9]=0;
          strC3[2]=0;
          strC3[9]=0;
          tg3="";
        }
        
        if((ang3=="")==false && (cos3=="")==false && sen3==""){ //seno+tan
          str[2]=5;
          str[10]=5;
          strC1[2]=255;
          strC1[10]=255;
          strC2[2]=0;
          strC2[10]=0;
          strC3[2]=0;
          strC3[10]=0;
          tg3="";
        }
        
        if((cos3=="")==false && (sen3=="")==false && ang3==""){ //cos+tan
          str[9]=5;
          str[10]=5;
          strC1[9]=255;
          strC1[10]=255;
          strC2[9]=0;
          strC2[10]=0;
          strC3[9]=0;
          strC3[10]=0;
          tg3="";
        }
        if((sen3=="")==false && (cos3=="")==false && (ang3=="")==false){ //cos+tan
          str[2]=5;
          str[9]=5;
          str[10]=5;
          strC1[2]=255;
          strC1[9]=255;
          strC1[10]=255;
          strC2[2]=0;
          strC2[9]=0;
          strC2[10]=0;
          strC3[2]=0;
          strC3[9]=0;
          strC3[10]=0;
          tg3="";
        }
  }
}