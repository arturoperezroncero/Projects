void texto1(){
  if(keyPressed){
        if(key == '1'){
          pri+="1";//int(pri)
          delay(200);
      }
      if(key == '2'){
          pri+="2";//int(pri)
          delay(200);
      }
      if(key == '3'){
          pri+="3";//int(pri)
          delay(200);
      }
      if(key == '4'){
          pri+="4";//int(pri)
          delay(200);
      }
      if(key == '5'){
          pri+="5";//int(pri)
          delay(200);
      }
      if(key == '6'){
          pri+="6";//int(pri)
          delay(200);
      }
      if(key == '7'){
          pri+="7";//int(pri)
          delay(200);
      }
      if(key == '8'){
          pri+="8";//int(pri)
          delay(200);
      }
      if(key == '9'){
          pri+="9";//int(pri)
          delay(200);
      }
      if(key == '0'){
          pri+="0";//int(pri)
          delay(200);
      }
      if(key == '.'){
          pri+=".";//int(sen2)
          delay(200);
      }
      if(float(pri)>0){
      if(key == '-'){
          pri="-"+pri;//int(pri)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        pri="";
      }
    }
}



void texto2(){
  if(keyPressed){
        if(key == '1'){
          seg+="1";//int(seg)
          delay(200);
      }
      if(key == '2'){
          seg+="2";//int(seg)
          delay(200);
      }
      if(key == '3'){
          seg+="3";//int(seg)
          delay(200);
      }
      if(key == '4'){
          seg+="4";//int(seg)
          delay(200);
      }
      if(key == '5'){
          seg+="5";//int(seg)
          delay(200);
      }
      if(key == '6'){
          seg+="6";//int(seg)
          delay(200);
      }
      if(key == '7'){
          seg+="7";//int(seg)
          delay(200);
      }
      if(key == '8'){
          seg+="8";//int(seg)
          delay(200);
      }
      if(key == '9'){
          seg+="9";//int(seg)
          delay(200);
      }
      if(key == '0'){
          seg+="0";//int(seg)
          delay(200);
      }
      if(key == '.'){
          seg+=".";//int(sen2)
          delay(200);
      }
      if(float(seg)>0){
      if(key == '-'){
          seg="-"+seg;//int(seg)
          delay(200);
      }
      }
      if(key==BACKSPACE){
        seg="";
      }
    }
}