////////////////////////////////////////////////////
///////////////// G R A M A T I C S  ////////////////
////////////////////////////////////////////////////
PShader blur;
boolean poema = true; 
boolean fem = false;
boolean past, present, future; 

// Strings for the first frase.
String N, adj, V, O, art, art2;

PFont f;
int fontSize = 30;
// Y value for each line
int L1 = 50;
int L2 = L1 + fontSize;
int L3 = L2 + fontSize;

// Space that each string occupies
float E_n, E_art, E_ad, E_v, E_obj, E_art2; 
// Int value that picks random string inside list
int Nx, Vx, Ax, Ox, Artx, Artx2; 

// values that define random parametres
int Org = 0; // Random variable that defines what type of phrase structure
int Org2 = 1; //  type of the second sentence.
int Org22 = 1; 
int not, rand, randA, randV;

float MasterRand; 

// number for the position of each element on the sentence
int posN, posV, posAdj, posO, posArt, posArt2;

// possible positions in a phrase
float[] pos = new float[6];  
float[] pos2 = new float[3];
float[] pos3 = new float[3];

// For article and Font
String Art, Font;
String letterN, letterAdj, letterArt; // First letter of the word to define Article a or an

void setup() {

  size(800, 700);
  background(0); 

  Font = Fonts[int(random(0, Fonts.length))];
  f = createFont(Font, fontSize);

  all();
  //poema();
  //poema2();
  //poema3();a
  println("Press 'a' to run the poem");
}

void draw() { 
  if (poema == true) {
    //    poema();
  }
}

void all() {

  randV = int(random(0, 10)); // Time of verb
  MasterRand = random(0, 9);

  if (randV < 5) {
    past = true;
    present = false;
    future = false;
  } else if ((randV >= 5) && (randV < 8)) { 
    past = false;
    present = true;
    future = false;
  } else {
    past = false;
    present = false;
    future = true;
  }

  if (MasterRand >= 4) {
    active();
  } else {
    passive();
  }
}

void keyPressed() {

  if (key == 'a') {
    // poema();
    all();
  }
  if (key == 's') {
    saveFrame();
  }
}

