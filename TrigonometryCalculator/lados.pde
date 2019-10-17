String lado1 = "";
float lado1N;

String lado2 = "";
float lado2N;

String lado3 = "";
float lado3N;

class lados {
  void caja() {
    //println(lado1N);
    rectMode(CENTER);
    noFill();
    strokeWeight(str[12]);  
    stroke(strC1[12], strC2[12], strC3[12]);
    rect(width/4, (height/6)*5, 100, 50);
    textAlign(CENTER);   
    text("lado a", (width/4)-100, ((height/6)*5));
    text(lado1, width/4, ((height/6)*5)+7);

    rectMode(CENTER);
    noFill();
    strokeWeight(str[13]);  
    stroke(strC1[13], strC2[13], strC3[13]);
    rect((width/4)*2, (height/6)*5, 100, 50);
    textAlign(CENTER);   
    text("lado b", ((width/4)*2)-100, ((height/6)*5));
    text(lado2, (width/4)*2, ((height/6)*5)+7);

    rectMode(CENTER);
    noFill();
    strokeWeight(str[14]);
    stroke(strC1[14], strC2[14], strC3[14]);
    rect((width/4)*3, (height/6)*5, 100, 50);
    textAlign(CENTER);   
    text("lado c", ((width/4)*3)-100, ((height/6)*5));
    text(lado3, (width/4)*3, ((height/6)*5)+7);
  }
  void teclado() {
    if (mouseX>=(width/4)-50 && mouseX<=(width/4)+50 && mouseY>=((height/6)*5)-25 && mouseY<=((height/6)*5)+25) {
      str[12]=5;
      if (keyPressed) {
        if (key == '1') {
          lado1+="1";//int(lado1)
          delay(200);
        }
        if (key == '2') {
          lado1+="2";//int(lado1)
          delay(200);
        }
        if (key == '3') {
          lado1+="3";//int(lado1)
          delay(200);
        }
        if (key == '4') {
          lado1+="4";//int(lado1)
          delay(200);
        }
        if (key == '5') {
          lado1+="5";//int(lado1)
          delay(200);
        }
        if (key == '6') {
          lado1+="6";//int(lado1)
          delay(200);
        }
        if (key == '7') {
          lado1+="7";//int(lado1)
          delay(200);
        }
        if (key == '8') {
          lado1+="8";//int(lado1)
          delay(200);
        }
        if (key == '9') {
          lado1+="9";//int(lado1)
          delay(200);
        }
        if (key == '0') {
          lado1+="0";//int(lado1)
          delay(200);
        }
        if (key == '.') {
          lado1+=".";//int(lado1)
          delay(200);
        }
        if (float(lado1)>0) {
          if (key == '-') {
            lado1="-"+lado1;//float(lado1)
            delay(200);
          }
        }
        if (key==BACKSPACE) {
          lado1="";
        }
      }
    } else {
      str[12]=1;
    }

    if (mouseX>=((width/4)*2)-50 && mouseX<=((width/4)*2)+50 && mouseY>=((height/6)*5)-25 && mouseY<=((height/6)*5)+25) {
      str[13]=5;
      if (keyPressed) {
        if (key == '1') {
          lado2+="1";//float(lado2)
          delay(200);
        }
        if (key == '2') {
          lado2+="2";//int(lado2)
          delay(200);
        }
        if (key == '3') {
          lado2+="3";//int(lado2)
          delay(200);
        }
        if (key == '4') {
          lado2+="4";//int(lado2)
          delay(200);
        }
        if (key == '5') {
          lado2+="5";//int(lado2)
          delay(200);
        }
        if (key == '6') {
          lado2+="6";//int(lado2)
          delay(200);
        }
        if (key == '7') {
          lado2+="7";//int(lado2)
          delay(200);
        }
        if (key == '8') {
          lado2+="8";//int(lado2)
          delay(200);
        }
        if (key == '9') {
          lado2+="9";//int(lado2)
          delay(200);
        }
        if (key == '0') {
          lado2+="0";//int(lado2)
          delay(200);
        }
        if (key == '.') {
          lado2+=".";//int(lado1)
          delay(200);
        }
        if (float(lado2)>0) {
          if (key == '-') {
            lado2="-"+lado2;//int(lado2)
            delay(200);
          }
        }
        if (key==BACKSPACE) {
          lado2="";
        }
      }
    } else {
      str[13]=1;
    }

    if (mouseX>=((width/4)*3)-50 && mouseX<=((width/4)*3)+50 && mouseY>=((height/6)*5)-25 && mouseY<=((height/6)*5)+25) {
      str[14]=5;
      if (keyPressed) {
        if (key == '1') {
          lado3+="1";//float(lado3)
          delay(200);
        }
        if (key == '2') {
          lado3+="2";//int(lado3)
          delay(200);
        }
        if (key == '3') {
          lado3+="3";//int(lado3)
          delay(200);
        }
        if (key == '4') {
          lado3+="4";//int(lado3)
          delay(200);
        }
        if (key == '5') {
          lado3+="5";//int(lado3)
          delay(200);
        }
        if (key == '6') {
          lado3+="6";//int(lado3)
          delay(200);
        }
        if (key == '7') {
          lado3+="7";//int(lado3)
          delay(200);
        }
        if (key == '8') {
          lado3+="8";//int(lado3)
          delay(200);
        }
        if (key == '9') {
          lado3+="9";//int(lado3)
          delay(200);
        }
        if (key == '0') {
          lado3+="0";//int(lado3)
          delay(200);
        }
        if (key == '.') {
          lado3+=".";//int(lado1)
          delay(200);
        }
        if (key==BACKSPACE) {
          lado3="";
        }
      }
    } else {
      str[14]=1;
    }
    lado1N=float(lado1);

    lado2N=float(lado2);

    lado3N=float(lado3);
  }
  void answer1() {
    lado1();
  }
  void answer2() {
    lado2();
  }
  void answer3() {
    lado3();
  }
}