///////////////////////////////////////////////////
// A U T O M A T I C  W O R D  G E N E R A T O R //
///////////////////////////////////////////////////

// Strings that will be displayed at the end by text(). 
String Verb; // full Verb puting together the radical and the pre and sufix
String Adj; // full Adjective  " " " " " " " " " " " " " " " " " " " " " " 
String art; // Article

// Radicals, Prefixes and Sufixes.
String radV; // Radical of the Verb.
String radAdj; // Radical of the Adjective.
String preV; // Prefix of the Verb.
String sufV; // Sufix of the Verb.
String preAdj; // Prefix of the Adjective.
String sufAdj; // Sufix of the Adjective.


// Number for string list defined by random().
int Vx, Nx, Adjx, preVx, sufVx, preAdjx, sufAdjx, radVx, radAdjx;

// Spacing value for each string.
float E_v, E_n, E_adj, E_art; 

// Positioning of each element. 
int p_art, p_V, p_Adj;

// y value for line
int L0 = 50; 

// possible positioning for each string in sentence.
float pos[] = new float[3];

// Defining fonts.
PFont f; // Font variable name.
int fontSize = 25; // Font Size.
String Font = "Calibri"; // Font Name

// Random Operators 
float r0;
float r1;
float r2; 

void setup() {
  size(600, 200);
  background(0);
  
  f= createFont(Font, fontSize);
  fill(255);
  
  sentence();
}

void draw() {
}

void keyPressed() {
  if (key == 'a') {
    sentence();
  }
}

