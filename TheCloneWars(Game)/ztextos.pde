void textos(){
  rectMode(CORNER);
  fill(255);
  rect(0,0,width,(height/3)-100);
  
  fill(0);
  textSize(48);
  if(mode==1){
  if(per==0){
    if(res==0){
      text("Coruscant is under attack.",width/2,(height/6)-60);
      text("What are your orders.",width/2,(height/6));
    }
    if(res==1){
      text("Not clear! Not clear!",width/2,(height/6)-60);
      text("Sector is not clear!",width/2,(height/6));
    }
    if(res==2){
      text("WATCH THOSE WRIST ROCKETS!!!",width/2,(height/6)-30);
    }
    if(res==3){
      text("We captured several umbaran soldiers.",width/2,(height/6)-60);
      text("How should we proceed.",width/2,(height/6));
    }
    }
    
    if(per==1){
      if(res==0){
      text("Aayla Secura's tactics are",width/2,(height/6)-60);
      text("too unsophisticated.",width/2,(height/6));
    }
    if(res==1){
      text("The 327th is getting the worst part",width/2,(height/6)-60);
      text("of the war. We've never seen Coruscant.",width/2,(height/6));
    }
    if(res==2){
      text("Our vanguards have located several",width/2,(height/6)-60);
      text("acklays ahead. What are your orders.",width/2,(height/6));
    }
    if(res==3){
      text("Our forces in Quell are being",width/2,(height/6)-60);
      text("overwhelmed. Orders?",width/2,(height/6));
    }
    }
    
    if(per==2){
      if(res==0){
      text("Our forces are ready to siege",width/2,(height/6)-60);
      text("Cato Neiomoidia. Waiting for orders.",width/2,(height/6));
    }
    if(res==1){
      text("All our AT-RT walkers are ready",width/2,(height/6)-60);
      text("to attack. What are your orders.",width/2,(height/6));
    }
    if(res==2){
      text("All our ISP speeders were",width/2,(height/6)-60);
      text("damaged in the last battle.",width/2,(height/6));
    }
    if(res==3){
      text("Our forces are injured and exhausted.",width/2,(height/6)-60);
      text("We should wait for reinforcements.",width/2,(height/6));
    }
    }
    
    if(per==3){
      if(res==0){
      text("Clone trooper CT-5555 is defectuous.",width/2,(height/6)-60);
      text("He must be immediately apprehended.",width/2,(height/6));
    }
    if(res==1){
      text("I am sorry. We have been instructed not",width/2,(height/6)-60);
      text("to let anyone visit prisioner Ahsoka Tano",width/2,(height/6));
    }
    if(res==2){
      text("Protecting the chancellor is a priority.",width/2,(height/6)-30);
    }
    if(res==3){
      text("I'm sorry Sir. It's time",width/2,(height/6)-60);
      text("for you to leave.",width/2,(height/6));
    }
    }
    
    if(per==4){
      if(res==0){
      text("Kamino is under attack.",width/2,(height/6)-60);
      text("The next generations are at great risk.",width/2,(height/6));//get to your ships... so much debris connot be good
    }
    if(res==1){
      text("This phase 1 armor is too unconfortable.",width/2,(height/6)-30);
    }
    if(res==2){
      text("This phase 1 armor is quite resistant.",width/2,(height/6)-30);
    }
    if(res==3){
      text("Clone 99 lived as a servant,",width/2,(height/6)-60);//indeed
      text("but died as soldier.",width/2,(height/6));
    }
    }
    
    if(per==5){
      if(res==0){
      text("All our LAAT gunships are being shot down.",width/2,(height/6)-60);
      text("We may not make it to the battle.",width/2,(height/6));//get to your ships... so much debris connot be good
    }
    if(res==1){
      text("The clone army needs more funding.",width/2,(height/6)-30);
    }
    if(res==2){
      text("Our forces are being depleted!",width/2,(height/6)-30);
    }
    if(res==3){
      text("Those clankers are bursting through",width/2,(height/6)-60);//indeed
      text("our troops. We need reinforcements.",width/2,(height/6));
    }
    }
    
    if(per==6){
    if(res==0){
      text("I did not bomb the jedi temple.",width/2,(height/6)-60);
      text("I swear.",width/2,(height/6));
    }
    if(res==1){
      text("Hey Sky Guy.",width/2,(height/6)-30);
    }
    if(res==2){
      text("We cannot retreat now.",width/2,(height/6)-60);
      text("We are winning.",width/2,(height/6));
    }
    if(res==3){
      text("What would happen if I",width/2,(height/6)-60);
      text("lost my lightsaber?",width/2,(height/6));
    }
    }
    
    if(per==7){
    if(res==0){
      text("My goodness Ani,",width/2,(height/6)-60);
      text("you've grown!",width/2,(height/6));
    }
    if(res==1){
      text("Don't leave me,",width/2,(height/6)-60);
      text("I may die of sadness.",width/2,(height/6));
    }
    if(res==2){
      text("Something wonderful has happened.",width/2,(height/6)-60);
      text("Ani, I'm pregnant.",width/2,(height/6));
    }
    if(res==3){
      text("No, I'm not an angel.",width/2,(height/6)-30);
    }
    }
    
    if(per==8){
    if(res==0){
      text("I have your padawan. If you",width/2,(height/6)-60);
      text("want her back, come get her.",width/2,(height/6));
    }
    if(res==1){
      text("We've taken the senators hostage.",width/2,(height/6)-60);
      text("Give as Ziro or we'll begin to kill'em",width/2,(height/6));
    }
    if(res==2){
      text("I have the chancellor. Let me escape",width/2,(height/6)-60);
      text("or I'll blast a hole through his head",width/2,(height/6));//obi wan undercover
    }
    if(res==3){
      text("We have one of your jedi friends. Give",width/2,(height/6)-60);
      text("us what we want or we'll kill him.",width/2,(height/6));
    }
    }
    
    if(per==9){
    if(res==0){
      text("Mace Windu killed my father,",width/2,(height/6)-60);
      text("and I'll have my revenge.",width/2,(height/6));
    }
    if(res==1){
      text("You jedi enslave my brothers,",width/2,(height/6)-60);
      text("and you will pay for that.",width/2,(height/6));
    }
    if(res==2){
      text("It's over Anakin, I have a",width/2,(height/6)-60);
      text("jetpack AND the highground.",width/2,(height/6));
    }
    if(res==3){
      text("My father killed many of you, jedi.",width/2,(height/6)-60);
      text("I will not disappoint him.",width/2,(height/6));
    }
    }
    
    if(per==10){
    if(res==0){
      text("Wesa no care about da Naboo",width/2,(height/6)-30);
    }
    if(res==1){
      text("Jar Jar is to be pune-ished",width/2,(height/6)-30);
    }
    if(res==2){
      text("Yousa no think yousa greater",width/2,(height/6)-60);
      text("dan da Gungans.. Mesa like dis",width/2,(height/6));
    }
    if(res==3){
      text("Peace!",width/2,(height/6)-30);
    }
    }
    
    if(per==11){
    if(res==0){
      text("Oh, hello, I am C3P0, Human Cyborg",width/2,(height/6)-60);
      text("Relations. How might I serve you?",width/2,(height/6));
    }
    if(res==1){
      text("We're doomed!",width/2,(height/6)-30);
    }
    if(res==2){
      text("Oh! Oh my! Hello Master Anakin!",width/2,(height/6)-30);
    }
    if(res==3){
      text("My parts are showing?",width/2,(height/6)-60);
      text("My goodness!",width/2,(height/6));
    }
    }
    
    if(per==12){
    if(res==0){
      text("Roooarrgh ur roo",width/2,(height/6)-30);//bad feeling
    }
    if(res==1){
      text("Wwwah rrroooaaah wha?",width/2,(height/6)-30);//holochess
    }
    if(res==2){
      text("Rowrigghh hrmkuhhrnnn",width/2,(height/6)-30);//trees are life
    }
    if(res==3){//hyperspace
      text("Aarrr wgh ggwaaah",width/2,(height/6)-60);
      text("*Preparing to jump to hyperspace*",width/2,(height/6));
    }
    }
    
    if(per==13){
    if(res==0){
      text("Obi Wan asigned me to your",width/2,(height/6)-60);
      text("regimen, General Skywalker",width/2,(height/6));
    }
    if(res==1){
      text("Obi Wan's gunship was shot",width/2,(height/6)-60);
      text("down during the attack",width/2,(height/6));
    }
    if(res==2){
      text("I just got some weird message from",width/2,(height/6)-60);
      text("the chancellor about an 'order 66'",width/2,(height/6));
    }
    if(res==3){
      text("Rex is a smart man",width/2,(height/6)-30);
    }
    }
    
    if(per==14){
    if(res==0){
      text("The younglings are a menace",width/2,(height/6)-60);
      text("to the republic. Kill them.",width/2,(height/6));
    }
    if(res==1){
      text("Did you ever hear the tragedy",width/2,(height/6)-60);
      text("of darth plagueis the wise",width/2,(height/6));
    }
    if(res==2){
      text("UNLIMITED POWEEER!!!",width/2,(height/6)-30);
    }
    if(res==3){
      text("I AM the senate!",width/2,(height/6)-30);
    }
    }
    
    if(per==15){
    if(res==0){
      text("Wing commanders, form up.",width/2,(height/6)-60);
      text("We're going in!",width/2,(height/6));
    }
    if(res==1){
      text("It would take more than one",width/2,(height/6)-60);
      text("strike to take me down.",width/2,(height/6));
    }
    if(res==2){
      text("Weird. Lightsabers underwater",width/2,(height/6)-60);
      text("would usually short out...",width/2,(height/6));
    }
    if(res==3){
      text("They are not tentacles.",width/2,(height/6)-60);
      text("They are my hair.",width/2,(height/6));
    }
    }
    
    if(per==16){
    if(res==0){
      text("Oink",width/2,(height/6)-30);
    }
    if(res==1){
      text("Gnorn gweek muh",width/2,(height/6)-30);
    }
    if(res==2){
      text("M'uhk'gfa scabwit v'lch",width/2,(height/6)-30);
    }
    if(res==3){
      text("Urrjsh urrsh",width/2,(height/6)-30);//stop
    }
    }
    
    if(per==17){
    if(res==0){
      text("Crush them! Make",width/2,(height/6)-60);
      text("them suffer!",width/2,(height/6));
    }
    if(res==1){
      text("Skywalker. I was expecting someone with",width/2,(height/6)-60);
      text("your reputation to be a little... older.",width/2,(height/6));
    }
    if(res==2){
      text("General Skywalker.",width/2,(height/6)-60);
      text("You are a bold one.",width/2,(height/6));
    }
    if(res==3){
      text("Your lightsabers will make a",width/2,(height/6)-60);
      text("fine addition to my collection.",width/2,(height/6));
    }
    }
    
    if(per==18){
    if(res==0){
      text("Yobama, I am",width/2,(height/6)-30);//yes can we
    }
    if(res==1){
      text("Powerful you have become,",width/2,(height/6)-60);
      text("the dark side I sense in you.",width/2,(height/6));
    }
    if(res==2){
      text("Do or do not. There is no try.",width/2,(height/6)-30);
    }
    if(res==3){
      text("Size matters not",width/2,(height/6)-30);

    }
    }
    
    if(per==19){
    if(res==0){
      text("Mesa called Jar Jar Binks,",width/2,(height/6)-60);
      text("mesa your humble servant!",width/2,(height/6));
    }
    if(res==1){
      text("Mesa best character in Star Wars",width/2,(height/6)-30);
    }
    if(res==2){
      text("Icky, icky goo!",width/2,(height/6)-30);
    }
    if(res==3){
      text("Count me outta dis one. Better",width/2,(height/6)-60);
      text("dead here than deader in the Core",width/2,(height/6));
    }
    }
    
    if(per==20){
    if(res==0){
      text("Fear is my ally",width/2,(height/6)-30);
    }
    if(res==1){
      text("The horns? They are ornamental.",width/2,(height/6)-30);
    }
    if(res==2){
      text("At last, we will reveal ourselves to",width/2,(height/6)-60);
      text("the Jedi. At last, we will have revenge.",width/2,(height/6));
    }
    if(res==3){
      text("*Grunts angrily*",width/2,(height/6)-30);
    }
    }
    
    if(per==21){
    if(res==0){
      text("It's over Anakin,",width/2,(height/6)-60);
      text("I have the high ground.",width/2,(height/6));//chill obi, is just a mid-life crisis/you underestimate my powers
    }
    if(res==1){
      text("Hello there",width/2,(height/6)-30);
    }
    if(res==2){
      text("What about the droid attack",width/2,(height/6)-60);
      text("on the wookies?",width/2,(height/6));
    }
    if(res==3){
      text("Another happy landing...",width/2,(height/6)-30);
    }
    }
    
    if(per==22){
    if(res==0){
      text("No, I'm not Jesus.",width/2,(height/6)-30);
    }
    if(res==1){
      text("The ability to speak does",width/2,(height/6)-60);
      text("not make you intelligent.",width/2,(height/6));
    }
    if(res==2){
      text("You are the Chosen One,",width/2,(height/6)-60);
      text("you must see it.",width/2,(height/6));
    }
    if(res==3){
      text("There's always a bigger fish.",width/2,(height/6)-30);
    }
    }
    
    if(per==23){
    if(res==0){
      text("Boop Boop",width/2,(height/6)-60);
      text("*Angry beep*",width/2,(height/6));
    }
    if(res==1){
      text("Boop Beep Beep",width/2,(height/6)-60);
      text("*Happy beep*",width/2,(height/6));
    }
    if(res==2){
      text("Beep Boop Beep",width/2,(height/6)-60);
      text("*Worried beep*",width/2,(height/6));
    }
    if(res==3){
      text("Boop Boop Beep",width/2,(height/6)-60);
      text("*Question beep*",width/2,(height/6));
    }
    }
    
    if(per==24){
    if(res==0){
      text("You won't walk away from this one,",width/2,(height/6)-60);
      text("you slave scum.",width/2,(height/6));
    }
    if(res==1){
      text("You're Bantha poodoo!",width/2,(height/6)-30);
    }
    if(res==2){
      text("Cha woman. Cha woman.",width/2,(height/6)-60);
      text("Na soo wanna wanna... real man?",width/2,(height/6));
    }
    if(res==3){
      text("You may have won the race,",width/2,(height/6)-60);
      text("but not the battle, slave scum.",width/2,(height/6));
    }
    }
    
    if(per==25){
    if(res==0){
      text("Protect the chancellor!!!",width/2,(height/6)-30);
    }
    if(res==1){
      text("I'm blue da ba dee da ba daa",width/2,(height/6)-30);
    }
    if(res==2){
      text("I wanted a life more",width/2,(height/6)-60);
      text("than empty servitude.",width/2,(height/6));
    }
    if(res==3){
      text("The chancellor is our",width/2,(height/6)-60);
      text("only priority.",width/2,(height/6));
    }
    }
    
    if(per==26){
    if(res==0){
      text("Take a sit,",width/2,(height/6)-60);
      text("young Skywalker",width/2,(height/6));
    }
    if(res==1){
      text("You are in this council, but we do",width/2,(height/6)-60);
      text("not grant you the rank of master",width/2,(height/6));
    }
    if(res==2){
      text("The cloning facilities are",width/2,(height/6)-60);
      text("working at full efficiency.",width/2,(height/6));
    }
    if(res==3){
      text("The droids are spread thin.",width/2,(height/6)-60);
      text("We must press our offensive now!",width/2,(height/6));
    }
    }
    
    if(per==27){
    if(res==0){
      text("Aargh!",width/2,(height/6)-30);
    }
    if(res==1){
      text("Eyaak urk urk!",width/2,(height/6)-30);
    }
    if(res==2){
      text("Trrru'uunqa!",width/2,(height/6)-30);
    }
    if(res==3){
      text("Orukak argg yurag",width/2,(height/6)-30);
    }
    }
    
    if(per==28){
    if(res==0){
      text("Guta naloya",width/2,(height/6)-30);
    }
    if(res==1){
      text("Mind tricks won't work on me;",width/2,(height/6)-60);
      text("only money.",width/2,(height/6));
    }
    if(res==2){
      text("We split the winnings,",width/2,(height/6)-60);
      text("fifty-fifty.",width/2,(height/6));
    }
    if(res==3){
      text("You won the small toss, outlander,",width/2,(height/6)-60);
      text("bou you won't win the race",width/2,(height/6));//now ThHIS is pod racing
    }
    }
    }
    if(mode==3){
      if(intro==0){
        text("Oh, hello Master.",width/2,(height/6)-90);
        text("The recordings you wanted",width/2,(height/6)-30);
        text("to inspect are now prepared.",width/2,(height/6)+30);
        image(finger,xf,height/2);
        xf+=vf;
        if(xf>(width/5)*4){
          vf*=-1;
        }
        if(xf<(width/5)){
          vf*=-1;
        }
      }if(intro==1){
        text("You will play as",width/2,(height/6)-60);
        text("Jedi Master Skywalker",width/2,(height/6));
      }if(intro==2){
        text("You will be able to interact with",width/2,(height/6)-90);
        text("different characters, and answer",width/2,(height/6)-30);
        text("their questions in different ways",width/2,(height/6)+30);
      }if(intro==3){
        text("You can do this by",width/2,(height/6)-60);
        text("swiping right or left",width/2,(height/6));
      }if(intro==4){
        text("Your answers will",width/2,(height/6)-90);
        text("affect the relation you",width/2,(height/6)-30);
        text("have with 4 parties:",width/2,(height/6)+30);
      }if(intro==5){
        text("The Jedi Council, The Clone Army",width/2,(height/6)-60);
        text("The Separatist Army, and the force.",width/2,(height/6));
      }if(intro==6){
        text("The force is the most important one.",width/2,(height/6)-90);
        text("It is represented by 2 lightsabers,",width/2,(height/6)-30);
        text("one red, and one green.",width/2,(height/6)+30);
      }if(intro==7){
        text("You can see their status in",width/2,(height/6)-60);
        text("the lower part of the screen",width/2,(height/6));
      }if(intro==8){
        text("If any of them increase or",width/2,(height/6)-60);
        text("decrease too much, you lose.",width/2,(height/6));
      }if(intro==9){
        text("But don't worry, I know you want",width/2,(height/6)-90);
        text("to keep playing this gorgeous, high",width/2,(height/6)-30);
        text("quality game; so you can reset it",width/2,(height/6)+30);
      }
      if(intro==10){
        text("You are now prepared, Master.",width/2,(height/6)-60);
        text("May the force be with you.",width/2,(height/6));
      }
    }
}
