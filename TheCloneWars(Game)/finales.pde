void finales(){
  if(fJKw==true){
    finale=int(random(0,3));
    fJKw=false;
  }
  if(fJKl==true){
    finale=int(random(3,6));
    fJKl=false;
  }
  
  if(fCISw==true){
    finale=int(random(6,9));
    fCISw=false;   
  }
  if(fCISl==true){
    finale=int(random(9,12));
    fCISl=false;
  }
  
  if(fCAw==true){
    finale=int(random(12,15));
    fCAw=false;
  }
  if(fCAl==true){
    finale=int(random(15,18));
    fCAl=false;
  }
  
  if(fFw==true){
    finale=int(random(18,21));
    fFw=false;
  }
  if(fFl==true){
    finale=int(random(21,24));
    fFl=false;
  }
}

void finale(){
  if(finale==0){
    text("Mace Windu has grown too powerful,",width/2,((height/3))-75);
    text("and has fallen into the hands",width/2,((height/3))-25);
    text("of the dark side. He now prepares",width/2,((height/3))+25);
    text("to take over the Republic.",width/2,((height/3))+75);
  }
  if(finale==1){
    text("The Jedi Council is now so",width/2,((height/3))-75);
    text("powerful that it starts to get",width/2,((height/3))-25);
    text("more and more corrupt. The ways",width/2,((height/3))+25);
    text("of the Jedi are no longer benevolent.",width/2,((height/3))+75);
  }
  if(finale==2){
    text("Oppo Rancisis, that weird chicken-like",width/2,((height/3))-75);
    text("Master Jedi with a lot of hair nobody ",width/2,((height/3))-25);
    text("cares about, turns out to be a Sith.",width/2,((height/3))+25);
    text("He becomes the senate and kills Palpatine.",width/2,((height/3))+75);
    text("The End",width/2,((height/3))+125);
    
  }
  
  
  if(finale==3){
    text("The Jedi Council is now too weak. Palpatine",width/2,((height/3))-75);
    text("swiftly takes advantage of this by",width/2,((height/3))-25);
    text("buying it and turning it into a dying",width/2,((height/3))+25);
    text("franchise, like Disney and Star Wars.",width/2,((height/3))+75);
  }
  if(finale==4){
    text("Palpatine throws a devastating attack",width/2,((height/3))-75);
    text("at the Jedi Council, describing it as",width/2,((height/3))-25);
    text("racist and sexist, for having only 2 black",width/2,((height/3))+25);
    text("guys (Windu and Yobama) and 4 women.",width/2,((height/3))+75);
    text("The Council is, of course, obliterated.",width/2,((height/3))+125);
  }
  if(finale==5){
    text("Shaak Ti, during her speech in the Nobel",width/2,((height/3))-75);
    text("Prizes Ceremony, mistook Star Wars and",width/2,((height/3))-25);
    text("Star Trek. She and the entire Jedi",width/2,((height/3))+25);
    text("Council were killed during that same night",width/2,((height/3))+75);
    text("by fans of both franchises.",width/2,((height/3))+125);
  }
  
  
  if(finale==6){
    text("The Separatists have won the war.",width/2,((height/3))-75);
    text("It actually isn't that bad, because",width/2,((height/3))-25);
    text("they were actually just opressed workers",width/2,((height/3))+25);
    text("trying to be able to have a decent life.",width/2,((height/3))+75);
    text("Palpatine was the real troublemaker.",width/2,((height/3))+125);
  }
  if(finale==7){
    text("The separatists have won the war.",width/2,((height/3))-75);
    text("However, the droid army, through",width/2,((height/3))-25);
    text("a coup d'etat, takes over control",width/2,((height/3))+25);
    text("and starts a powerful dictatorship.",width/2,((height/3))+75);
  }
  if(finale==8){
    text("The separatists managed to take control",width/2,((height/3))-75);
    text("of the Republic's cloning facilities.",width/2,((height/3))-25);
    text("They start to create an army of General",width/2,((height/3))+25);
    text("Grievous' clones, which destroy the Republic.",width/2,((height/3))+75);
  }
  
  
  
  if(finale==9){
    text("The Republic wins the Clone Wars,",width/2,((height/3))-75);
    text("which allow the Jedi Council to",width/2,((height/3))-25);
    text("calm down and detect and kill Darth",width/2,((height/3))+25);
    text("Sidious. Oh, wait. Just a dream.",width/2,((height/3))+75);
  }
  if(finale==10){
    text("The Clone Wars come to an end,",width/2,((height/3))-75);
    text("which means that this game is",width/2,((height/3))-25);
    text("now pointless.",width/2,((height/3))+25);
    text("Farewell",width/2,((height/3))+125);
  }
  if(finale==11){
    text("The Republic wins the war.",width/2,((height/3))-75);
    text("However, this starts a social",width/2,((height/3))-25);
    text("movement throughout its planets",width/2,((height/3))+25);
    text("fighting for clones' rights.",width/2,((height/3))+75);
    text("Looks like a problem for Palpatine.",width/2,((height/3))+125);
  }
  
  
  
  if(finale==12){
    text("The Jedi trust too much",width/2,((height/3))-75);
    text("in their fellow clones,",width/2,((height/3))-25);
    text("and don't see order 66 come.",width/2,((height/3))+25);
    text("They all get rekt and die.",width/2,((height/3))+75);
  }
  if(finale==13){
    text("The clones notice their inhibitor",width/2,((height/3))-75);
    text("chips, which will make them kill their",width/2,((height/3))-25);
    text("Jedi. Most of them take them out,",width/2,((height/3))+25);
    text("avoiding order 66. Some kept them, though.",width/2,((height/3))+75);
    text("Some Jedi were pretty big pieces of shit.",width/2,((height/3))+125);
  }
  if(finale==14){
    text("The clone leaders decide to end",width/2,((height/3))-75);
    text("the War, which is killing so many of",width/2,((height/3))-25);
    text("their brothers, once and for all.",width/2,((height/3))+25);
    text("Buy turning against the Republic, though.",width/2,((height/3))+75);
  }
  
  
  
  if(finale==15){
    text("The senate decides to increase the",width/2,((height/3))-125);
    text("Clone Army's funding increasing as",width/2,((height/3))-75);
    text("well the Republic's debt and the",width/2,((height/3))-25);
    text("difference between the rich and poor,",width/2,((height/3))+25);
    text("leading to a communist revoulution.",width/2,((height/3))+75);
    text("Damn commies...",width/2,((height/3))+125);
  }
  if(finale==16){
    text("Palpatine mistakes order 66 with",width/2,((height/3))-75);
    text("order 67, meaning that instead of",width/2,((height/3))-25);
    text("killing all jedi, clones have to",width/2,((height/3))+25);
    text("engange in a dance party with them.",width/2,((height/3))+75);
    text("This led to pretty awkward moments...",width/2,((height/3))+125);
  }
  if(finale==17){
    text("The clones, fed up with the War, took",width/2,((height/3))-75);
    text("over the cloning facilities in Kamino",width/2,((height/3))-25);
    text("and developed an utopian anarchist society,",width/2,((height/3))+25);
    text("where they were all the same. Literally.",width/2,((height/3))+75);
  }
  
  
  
  if(finale==18){
    text("You have grown too strong, and decide",width/2,((height/3))-75);
    text("to destroy all existing religions in",width/2,((height/3))-25);
    text("the galaxy so yours can prevail: Anakinism,",width/2,((height/3))+25);
    text("which worships you, the One True God.",width/2,((height/3))+75);
  }
  if(finale==19){
    text("You become the most powerful force user",width/2,((height/3))-125);
    text("in the galaxy, and manage to stay on the",width/2,((height/3))-75);
    text("light side. You preserve peace throughout",width/2,((height/3))-25);
    text("the Republic, at least until you face an",width/2,((height/3))+25);
    text("enemy far more powerful than you:",width/2,((height/3))+75);
    text("Jar Jar Binks, the Destroyer of Comedy.",width/2,((height/3))+125);
  }
  if(finale==20){
    text("Right after order 66, knowing that you are",width/2,((height/3))-75);
    text("a f***ing father, you decide not to f***ing",width/2,((height/3))-25);
    text("choke your f***ing own wife, and come to your ",width/2,((height/3))+25);
    text("f***ing senses and make f***ing up with Obi Wan.",width/2,((height/3))+75);
  }
  
  
  
  if(finale==21){
    text("Right after you succumb to the Dark Side,",width/2,((height/3))-75);
    text("Yoda and Obi Wan create a time machine",width/2,((height/3))-25);
    text("so they can go back in time and beat",width/2,((height/3))+25);
    text("your slave ass for betraying them.",width/2,((height/3))+75);
  }
  if(finale==22){
    text("Knowing that you were a bit of a fascist",width/2,((height/3))-75);
    text("after your talk in Naboo, Padme decides",width/2,((height/3))-25);
    text("to kill you in your sleep. Did you ever",width/2,((height/3))+25);
    text("hear the Tragedy of Darth Plagueis...",width/2,((height/3))+75);
  }
  if(finale==23){
    text("The Jedi Council grants you the rank of",width/2,((height/3))-25);
    text("Master, so you decide not kill children.",width/2,((height/3))+25);
  }
}
    
