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
   "language "/*0*/   , "word "/*1*/   , "character "/*2*/  , 
   "sound "/*3*/   , "shape "/*4*/   , "stroke "/*5*/  , 
   "voice "/*6*/   , "letter "/*7*/   , "tongue "/*8*/  , 
   "silence "/*9*/   , "movement "/*10*/   , "paper "/*11*/  , 
   "colapse "/*12*/   , "memory "/*13*/   , "night "/*14*/  , 
   "lie "/*15*/   , "misunderstanding "/*16*/   , "border "/*17*/  , 
   "dream "/*18*/   , "humanity "/*19*/   , "priest "/*20*/  , 
   "reader "/*21*/   , "professor "/*22*/   , "lawyer "/*23*/  , 
   "viewer "/*24*/   , "mother  "/*25*/   , "father "/*26*/   , "brother "/*27*/  , 
   "sister "/*28*/   , "sense "/*29*/  , "meaning ", "mute ", "untangible ", "miracle ",
   "falsehood ", "paranoia ", "geopolitics ", "machine ", "inteligence ", "bureaucrat ",
   "animal ", "canibal ", "men ", "woman ", "myth ", "past ", "air ", "automobile ", 
   "survailance  ", "imagination ", "sleeping pills ", "immigrant ", "nationalist ", 
   "xenophobe ", "baby ", "flower ", "insect ", "bard ", "police officer ", 
   "president ", "politician ", "gallery owner ", "artist ", 
   "poet ", "novelist ", "translator ", "dancer ", "killer ", "criminal ", "saint ", 
   "bishop ", "pope ", "cat ", "dog ", "bomb ", "soldier ", "revolutionary ", "rebel ",
   "verb ", "translation ", "shape ", "cloud ", "script ", "bone ", "drawing ", "girl ",
   "city ", "metal ", "sea ", "ocean ", "information ", "feather ", "ink ", "future ", 
   "present ", "fingertip ", "arms ", "legs ", "head " 
};
// the(0-11) for(12-16) about(17-21) from(22-24) in to(25-26) with(27-28)
String[] verb0 = { //present - no possibilites to denial
  /*THE*/   "controls "/*0*/   , "caresses "/*1*/   , "has "/*2*/  , 
   "smokes "/*3*/   , "becomes "/*4*/   , "kisses "/*5*/  , 
   "creates "/*6*/   , "destroys "/*7*/   , "uses "/*8*/  , 
   "hates "/*9*/   , "loves "/*10*/   , "recitates "/*11*/  , 
   "kills "/*12*/  /*FOR*/   , "cries "/*13*/   , "dies "/*14*/  , 
   "goes insane "/*15*/   , "cares "/*16*/  , /*ABOUT*/ "reads "/*17*/ , "lies "/*18*/, 
   "forgets "/*19*/   , "writes "/*20*/   , "dreams "/*21*/  , 
  /*FROM*/   "runs away "/*22*/   , "escapes "/*23*/   , "returns "/*24*/  , 
  /*IN TO*/   "turns "/*25*/   , "transforms "/*26*/  , /*WITH*/ "interacts "/*27*/, 
   "has sex "/*28*/  , "works "
};

String[] verb1 = { //past - possiblity to denial also
  /*THE*/   "controled "/*0*/   , "caressed "/*1*/   , "had "/*2*/  , 
   "smoked "/*3*/   , "became "/*4*/   , "kissed "/*5*/  , 
   "created "/*6*/   , "destroyed "/*7*/   , "used "/*8*/  , 
   "hated "/*9*/   , "loved "/*10*/   , "recitated "/*11*/  , 
   "killed "/*12*/  /*FOR*/   , "cried "/*13*/   , "died "/*14*/  , 
   "went insane "/*15*/   , "cared "/*16*/  , /*ABOUT*/ "understood "/*17*/ , "lied "/*18*/, 
   "forgot "/*19*/   , "wrote "/*20*/   , "dreamed "/*21*/  , 
  /*FROM*/   "ran away "/*22*/   , "escaped "/*23*/   , "returned "/*24*/  , 
  /*IN TO*/   "turned "/*25*/   , "transformed "/*26*/  , /*WITH*/ "interacted "/*27*/, 
   "had sex "/*28*/  , "worked "
};

String[] verb2 = { //neutral - possibilites to future and denial
  /*THE*/   "control "/*0*/   , "caress "/*1*/   , "have "/*2*/  , 
   "smoke "/*3*/   , "become "/*4*/   , "kiss "/*5*/  , 
   "create "/*6*/   , "destroy "/*7*/   , "use "/*8*/  , 
   "hate "/*9*/   , "love "/*10*/   , "recitate "/*11*/  , 
   "kill "/*12*/  /*FOR*/   , "cry "/*13*/   , "die "/*14*/  , 
   "go insane "/*15*/   , "care "/*16*/  , /*ABOUT*/ "understand "/*17*/ , "lie "/*18*/, 
   "forget "/*19*/   , "write "/*20*/   , "dream "/*21*/  , 
  /*FROM*/   "run away "/*22*/   , "escape "/*23*/   , "return "/*24*/  , 
  /*IN TO*/   "turn "/*25*/   , "transform "/*26*/  , /*WITH*/ "interact "/*27*/, 
   "have sex "/*28*/  , "works "
};

String[] verbG = {
  /*the*/  "fucking ", "killing ", "sensing ", "justifying ", "twisting ", "breaking ", 
  "creating ", "kissing ", "searching ", "understanding ", "cleaning ", 
  "paying ", "erasing ", "liquifying ", "complicating ", "imitating ", 
  "conquering ", "drawing ", "abandoning ", "eating ", "swallowing ", 
  "hosting ", "nourishing ", /*for*/ "crying ", "dying ", "caring ", "seaching ", 
  /*about*/  "dreaming ", "forgeting ", "caring ", "writing ", /*from*/ "runving away ",
   "escaping ", "returning " /*in to*/    , "turning ", "transforming ", /*with*/
  "interacting ", "having sex "
};


String[] adj0 = {
   "imaginary "/*0*/   , "alcoholic "/*1*/   , "intuitive "/*2*/  , 
   "addicted "/*3*/   , "irritated "/*4*/   , "inconsequential "/*5*/   , "buried "/*6*/  , 
   "poor "/*6*/   , "friendly "/*7*/   , "lying "/*8*/  , 
   "quiet "/*9*/   , "loud "/*10*/   , "falling "/*11*/  , 
   "travelling "/*12*/   , "small "/*13*/   , "weak "/*14*/  , 
   "discriminated "/*15*/   , "sad "/*16*/   , "happy "/*17*/  , 
   "wandering "/*18*/   , "dying "/*19*/   , "rich "/*20*/  , 
   "frozen "/*21*/   , "melting "/*22*/   , "delusional "/*23*/  , 
   "hallucinating "/*24*/   , "lonely "/*25*/   , "lost "/*26*/  , 
   "born "/*27*/  , "pervert ", "praying ", "saint ", "problematic ", 
  "cold hearted ", "twisting "
};  

String[] obj0 = {
   "poem "/*0*/   , "stone "/*1*/   , "tree "/*2*/  , 
   "book "/*3*/   , "bank "/*4*/   , "rabbit "/*5*/  , 
   "world capital "/*6*/   , "gravity "/*7*/   , "bong "/*8*/  , 
   "money "/*9*/   , "universality "/*10*/   , "entropy "/*11*/  , 
   "inteligence "/*12*/   , "earth "/*13*/   , "madness "/*14*/  , 
  "bird ", "religion ", "church ", "democracy ", 
  "nazi ", "past ", "future ", "moon ", "insect ", 
  "galaxy ", "food ", "art ", "toilet paper ", 
  "poetry ", "woman ", "man ", "human nature ",
};

String[] adjAb = { 
  "shitty ", "paralyzed ", "right-wing ", "stolen ", 
  "poetic ", "satanic ", "rational ", 
  "fake ", "corrupt ", "metro-sexual ", "bad ", 
  "limonade ", "pale ", "dragon ", "totem ", 
  "artificial ", "eletronic ", "inverted ", "imperial ",
};

String[] adv = {
  "heavily ", "softly ", "with love ", "quickly ", 
  "without breathing ", "self-sufficiently ", "with a suicidal thought ", 
  "religiously ", "with faith ", "carefully ", "happily ", "quietly ", 
  "intensively ", "according to the bible ",
};

String[] Fonts = { 
  "Helvetica", "Arial", "Courier", "Courier New", "Georgia", "Gill Sans", "Consolas", "Geneva"
};

