////////////////////////////////////////////////////
///////////////// G R A M A T I C S  ////////////////
////////////////////////////////////////////////////
PShader blur;
// masculino feminino 
boolean fem = false;
// tempo verbal
boolean past, present, future; 

// Strings for the first frase.
// Nome, adjetivo, verbo, objeto, artigo 1, artigo 2
String N, adj, V, O, art, art2;

// font
PFont f;
int fontSize = 30;

// Positioning
// Y value for each line
int L1 = 50;
int L2 = L1 + fontSize;
int L3 = L2 + fontSize;

// Word spacing
// Space that each string occupies
float E_n, E_art, E_ad, E_v, E_obj, E_art2; 

// guardar valor de índice 
int Nx, Vx, Ax, Ox, Artx, Artx2; 

// values that define random parametres
int Org = 0; // Random variable that defines what type of phrase structure
int Org2 = 1; //  type of the second sentence.
int Org22 = 1;  // ?????
int not, rand, randA, randV;

float MasterRand; 

// Position number of each part in sentence
int posN, posV, posAdj, posO, posArt, posArt2;

// Posíveis posicionamentos da frase
float[] pos = new float[6];  
float[] pos2 = new float[3];
float[] pos3 = new float[3];

// For article and Font
String Art, Font;
// First letter of the word to define Article a or an
String letterN, letterAdj, letterArt; 

void setup() {

  size(800, 700);
  background(0); 
  // pega uma fonte aleatória
  Font = Fonts[int(random(0, Fonts.length))];
  f = createFont(Font, fontSize);

  all();
  //poema();
  //poema2();
  //poema3();
  println("Press 'a' to run the poem");
}

void draw() { 
  
}

// função que faz tudo
void all() {

  MasterRand = random(0, 9);
  
  // Setar tempo verbal
  randV = int(random(0, 10)); // Time of verb
  if (randV < 5) {
    // passado
    past = true;
    present = false;
    future = false;
  } else if ((randV >= 5) && (randV < 8)) { 
    // presente
    past = false;
    present = true;
    future = false;
  } else {
    // futuro
    past = false;
    present = false;
    future = true;
  }
  // sujeito ativo ou passivo
  if (MasterRand >= 4) {
    active();
  } else {
    passive();
  }
}

void keyPressed() {
  all();
}