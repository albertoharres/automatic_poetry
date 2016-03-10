// W O R D S 
//
// PADRÃO : 
// String[]  = {""/*0*/,""/*1*/, " "/*2*/, 
//  " "/*3*/, " "/*4*/, " "/*5*/, 
//  " "/*6*/, " "/*7*/, " "/*8*/, 
//  " "/*9*/, " "/*10*/, " "/*11*/, 
//  " "/*12*/, " "/*13*/, " "/*14*/, 
//  " "/*15*/, " "/*16*/, " "/*17*/, 
//  " "/*18*/, " "/*19*/, " "/*20*/, 
//  " "/*21*/, " "/*22*/, " "/*23*/, 
//  " "/*24*/      }
// 

String[] article = {
  "the ", "the ", "a "
};

String[] article2 = {
  "the ", "the ", "the ", "the ", "", "", 
};

String[] artPos = {
   "his "/*0*/   , "her "/*1*/
};

String[] noun = { 
   "alien "/*0*/   , "animal "/*1*/   , "artist "/*2*/  , 
   "dealer "/*3*/   , "soldier "/*4*/   , "bird "/*5*/  , 
   "criminal "/*6*/   , "city "/*7*/   , "self "/*8*/  , 
   "mother  "/*9*/   , "dog "/*10*/   , "man "/*11*/  , 
   "woman "/*12*/   , "wife "/*13*/   , "girl "/*14*/  , 
   "gypsy "/*15*/   , "kid "/*16*/   , "baby "/*17*/  , 
   "worker "/*18*/   , "teacher "/*19*/   , "priest "/*20*/  , 
   "scientist "/*21*/   , "snake "/*22*/   , "lawyer "/*23*/  , 
   "prostitute "/*24*/   , "mother  "/*25*/   , "native "/*26*/   , "brother "/*27*/  , 
   "sister "/*28*/   , "father "/*29*/  , "bird "
};
// the(0-11) for(12-16) about(17-21) from(22-24) in to(25-26) with(27-28)
String[] verb0 = { //present - no possibilites to denial
  /*THE*/ "controls "/*0*/   , "caresses "/*1*/   , "has "/*2*/  , 
   "smokes "/*3*/   , "becomes "/*4*/   , "kisses "/*5*/  , 
   "creates "/*6*/   , "destroys "/*7*/   , "uses "/*8*/  , 
   "hates "/*9*/   , "loves "/*10*/   , "recitates "/*11*/  , 
     "kills "/*12*/  /*FOR*/ , "cries "/*13*/   , "dies "/*14*/  , 
   "goes insane "/*15*/   , "cares "/*16*/  , /*ABOUT*/ "reads "/*17*/ , "lies "/*18*/, 
   "forgets "/*19*/   , "writes "/*20*/   , "dreams "/*21*/  , 
  /*FROM*/   "runs away "/*22*/   , "escapes "/*23*/   , "returns "/*24*/  , 
  /*IN TO*/   "turns "/*25*/   , "transforms "/*26*/  , /*WITH*/ "interacts "/*27*/, 
   "has sex "/*28*/, "works "
};

String[] verb1 = { //past - possiblity to denial also
  /*THE*/   "controled "/*0*/   , "caressed "/*1*/   , "had "/*2*/  , 
   "smoked "/*3*/   , "became "/*4*/   , "kissed "/*5*/  , 
   "created "/*6*/   , "destroyed "/*7*/   , "used "/*8*/  , 
   "hated "/*9*/   , "loved "/*10*/   , "recitated "/*11*/  , 
     "killed "/*12*/  /*FOR*/ , "cried "/*13*/   , "died "/*14*/  , 
   "went insane "/*15*/   , "cares "/*16*/  , /*ABOUT*/ "understood "/*17*/ , "lied "/*18*/, 
   "forgot "/*19*/   , "wrote "/*20*/   , "dreamed "/*21*/  , 
  /*FROM*/   "ran away "/*22*/   , "escaped "/*23*/   , "returned "/*24*/  , 
  /*IN TO*/   "turned "/*25*/   , "transformed "/*26*/  , /*WITH*/ "interacted "/*27*/, 
   "had sex "/*28*/, "works "
};

String[] verb2 = { //neutral - possibilites to future and denial
  /*THE*/   "control "/*0*/   , "caress "/*1*/   , "have "/*2*/  , 
   "smoke "/*3*/   , "become "/*4*/   , "kiss "/*5*/  , 
   "create "/*6*/   , "destroy "/*7*/   , "use "/*8*/  , 
   "hate "/*9*/   , "love "/*10*/   , "recitate "/*11*/  , 
     "kill "/*12*/ /*FOR*/  , "cry "/*13*/   , "die "/*14*/  , 
   "go insane "/*15*/   , "care "/*16*/  , /*ABOUT*/ "understand "/*17*/ , "lie "/*18*/, 
   "forget "/*19*/   , "write "/*20*/   , "dream "/*21*/  , 
  /*FROM*/   "run away "/*22*/   , "escape "/*23*/   , "return "/*24*/  , 
  /*IN TO*/   "turn "/*25*/   , "transform "/*26*/  , /*WITH*/ "interact "/*27*/, 
   "have sex "/*28*/, "works "
};


String[] adj0 = {
   "imaginary "/*0*/   , "alcoholic "/*1*/   , "intuitive "/*2*/  , 
   "addicted "/*3*/   , "irritated "/*4*/   ,"inconsequential "/*5*/, "buried "/*6*/  , 
   "poor "/*6*/   , "friendly "/*7*/   , "lying "/*8*/  , 
   "quiet "/*9*/   , "loud "/*10*/   , "falling "/*11*/  , 
   "travelling "/*12*/   , "small "/*13*/   , "weak "/*14*/  , 
   "discriminated "/*15*/   , "sad "/*16*/   , "happy "/*17*/  , 
   "wandering "/*18*/   , "dying "/*19*/   , "rich "/*20*/  , 
   "frozen "/*21*/   , "melting "/*22*/   , "delusional "/*23*/  , 
   "hallucinating "/*24*/   , "lonely "/*25*/   , "lost "/*26*/  , 
   "born "/*27*/, "pervert ", "praying ", "saint ", "problematic ", 
   "cold hearted ", "twisting "
};  

String[] obj0 = {
   "poem "/*0*/   , "stone "/*1*/   , "tree "/*2*/  , 
   "book "/*3*/   , "bank "/*4*/   , "rabbit "/*5*/  , 
   "world capital "/*6*/   , "inverted gravity "/*7*/   , "bong "/*8*/  , 
   "money "/*9*/   , "false universality "/*10*/   , "entropy "/*11*/  , 
   "artificial inteligence "/*12*/   , "earth "/*13*/   , "madness"/*14*/ ,
   "bird ", "religion ", "church ", "democracy ", 
   "nazis ", "past ", "future ", "moon ", "insect ",
   "china ", "galaxy ", "food ", "art ", "toilet paper ", 
   "poetry ", "woman ", "man ", "human nature "
};


