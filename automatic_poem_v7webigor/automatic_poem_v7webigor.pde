////////////////////////////////////////////////////
///////////////// G R A M A T I C S  ///////////////
////////////////////////////////////////////////////

String Cj, N0, V0, O0, art0, pro, A0;

float E_n0, E_v0, E_o0, E_art0, E_pro, E_a0;

int N0x, V0x, A0x, Cjx, obj0x, Adv0x, O0x, Art0x;

int posCj, posN0, posV0, posO0, posart0, pospro, posA0;

float R0, R1, R2, R3;

boolean poema = true; 
boolean fem = false;

// Strings for the first frase.
String N, adj, V, O, art, art2;

int fontSize = 25;
// Y value for each line
int L1 = 50;
int L2 = L1 + fontSize;
int L3 = L2 + fontSize;

// Space that each string occupies
float E_n, E_art, E_ad, E_v, E_obj, E_art2; 
// Int value that picks random string inside list
int Nx, Vx, Ax, Advx, Ox, Artx, Artx2; 

// values that define random parametres
int Org = 0; // Random variable that defines what type of phrase structure
int Org2 = 1; //  type of the second sentence.
int Org22 = 1; 
int not, rand, randA, randV; 

// number for the position of each element on the sentence
int posN, posV, posAdj, posO, posArt, posArt2;

// possible positions in a phrase
float[] pos = new float[6];  
float[] pos2 = new float[3];
float[] pos3 = new float[3];

// For article and Font
String Art, Font;

void setup() {

  size(800, 150);
  background(0); 
 
  textSize(fontSize);
  //poema2();
  //poema3();a
}

void draw() { 
    background(0);
  textSize(fontSize);
  //textFont(f); // Fonte
  // for (int y = L1; y < height-L1; y += fontSize) {  // Função para ocorrer simultâneamente em várias linhas
  //for (int i = 0; i < 500; i ++) {

  // Defines random value for each time "poema" runs
  Org = int(random(0, 10)); // Random value that define the display of the adjetive
  not = int(random(0, 7)); // Random value for the negative form of the verb 
  rand = int(random(0, 10));  // Random value for the appearance of the article or not
  randA = int(random(0, 10));  // Random value for the appearance of the NOUN or not
  randV = int(random(0, 10)); // Time of verb

  // Defines the random number inside each string list

  Artx = int(random(0, article.length)); // Article
  Artx2 = int(random(0, article2.length)); // Article for Object
  Nx = int(random(0, noun.length)); // Noun
  Ax = int(random(0, adj0.length)); // Adjective
  Ox = int(random(0, obj0.length)); // Object

  if (randV < 5) {
    Vx = int(random(0, verb0.length)); // Verb 
    V = verb0[Vx];
  } else if ((randV >= 5) && (randV < 8)) {
    Vx = int(random(0, verb1.length)); // Verb
    V = verb1[Vx];
  } else { 
    Vx = int(random(0, verb2.length)); // Verb 
    if (not < 4) {
      V = "didn't " + verb2[Vx];
    } else {
      V = "will " + verb2[Vx];
    }
  }

  // the(0-11) for(12-16) about(17-21) from(22-24) in to(25-26) with(27-28)
  if ((Vx > 12)&&(Vx <= 16)) {
    V = V + "for ";
  } 
  if ((Vx > 16)&&(Vx <= 21)) {
    V = V + "about ";
  }
  if ((Vx > 21)&&(Vx <= 24)) {
    V = V + "from ";
  }
  if ((Vx > 24)&&(Vx <= 26)) {
    V = V + "into ";
  }
  if (Vx > 26) {
    V = V + "with ";
  }


  art = article[Artx]; // Defines the string for the Article
  N = noun[Nx]; // Definição de String para o sujeito 
  adj = adj0[Ax]; // Definição de String para o adjetivo
  O = article2[Artx2] + obj0[Ox];

  /* if (Nx <= 6) { // As primeiras 6 palavras no substantivo são femininas,
   Fem = true;      // ativam assim a função que fará os artigos
   } else {         // e a desinência de gênero. 
   Fem = false;     //
   } */  //

  pos[0] = 20; // valor X inicial de todas as linhas 


if((Nx == 12) || (Nx == 13) ||(Nx == 14) ||(Nx == 28)){
fem = true;
}

  if ((Org >= 5)&&(randA > 3)) { 
    adj = ""; // don't display adjective
    if ((Artx == 2) && (Nx < 3)) { // check article and noun picked 
      art = "an "; // transform "a" into "an"
    }
  } else { 
    if ((Artx == 2) && (Ax < 5)) { // check article and adjective
      art = "an "; // transform "a" into "an"
    }
  }
  if (randA < 2) { // check random value
    N = ""; // erase Noun
    if (rand <= 7) { // make article appear with adjective using "the"
      art = "the ";
      if (rand <= 6) {
        adj = adj + "one "; // add "one" as for example: "the imaginary one"
      }
    }
  }
  if (Vx < 4) {
    O = "";
  }

  // Pick value of the textWidth of each string
  E_art = textWidth(art); // Article
  E_n = textWidth(N);     // Noun
  E_ad = textWidth(adj);  // Adjective
  E_v = textWidth(V);     // Verb
  E_obj = textWidth(O);   // Object

  float E_total = E_art + E_n + E_ad + E_v + E_obj; // calculate total size of the string
  // Map the E_total value to the height of the screen, the values 150 and 650 where taken from the println(E_total) function.
  float m = map(E_total, 100, 700, 0, height); 

  println(E_total); // in order to make a better regulation of the mapping of the E_total

    // defines the space of each element n the order in which they appear
  pos[1] = pos[0]+E_art;
  pos[2] = pos[1]+E_ad;
  pos[3] = pos[2]+E_n;
  pos[4]= pos[3]+E_v;

  // defines a number in the order of the sentence, that will go inside pos[] in the text() function
  posArt = 0;
  posN = 2;  
  posAdj = 1;
  posV = 3;
  posO = 4;

  // }

  //if ((L1 < m + 10) && (L1 > m - 10)) { 
  text(art, pos[posArt], L1);  // display Article
  text(N, pos[posN], L1);      // display Sujeito
  text(adj, pos[posAdj], L1);  // display Adjetivo
  text(V, pos[posV], L1);      // display Verbo
  text(O, pos[posO], L1);      // display object

  //L1 = L1 + fontSize;

  if (L1 > height - fontSize) {
    poema = false; 

  }
R0 = random(0, 10);
  R1 = random(0, 10);
  
  
  
  if (R0 >= 5) {
    Cj = "since ";
  } 
  else {
    Cj = "because ";
  }

  Artx = int(random(0, article.length)); // Article
  N0x = int(random(0, noun.length)); // Noun
  A0x = int(random(0, adj0.length)); // Adjective
  O0x = int(random(0, obj0.length)); // Object

  O0 = obj0[O0x];
  A0 = adj0[A0x];

  if (fem == true) {
    pro = "she ";
  } 
  else {
    pro = "he ";
  }
  
  

  if ((randV >= 5) && (randV < 8)) {

    V0x = int(random(0, verb1.length)); // Verb in Past 
    V0 = verb1[V0x];
/*    O0 = "all was lost ";
    O0 = "there was nothing to lose ";
    O0 = "it didn't matter ";
   */ O0 = pro + V0 + "to ";
      //O0 = Obj + "was" + Adj
  } else {
    
    V0x = int(random(0, verb0.length)); // Verb in Past 
    V0 = verb0[V0x];
     
    O0 = "the " + O0 + "is " + A0;
  //  O0 = "it doens't matter "
 //   O0 = "there is nothing to lose "
 //   O0 = "all is lost "
  }
  
  String S1 = Cj + O0;
  L2 = L1 + fontSize;
  text(S1, pos[0], L2);
    delay(3000);
}

void keyPressed() {


  if (key == 'a') {
  }
  if (key == 's') {
    saveFrame();
  }
}

