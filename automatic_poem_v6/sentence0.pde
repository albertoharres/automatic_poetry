// --------------------------------------------------------
// ---------------------- > PRIMEIRA FRASE < --------------
// --------------------------------------------------------

void poema() {

  background(0);
  //textFont(f); // Fonte
  fontSize = 15 + int(random(20));
  // for (int y = L1; y < height-L1; y += fontSize) {  // Função para ocorrer simultâneamente em várias linhas
  //for (int i = 0; i < 500; i ++) {


  Font = Fonts[int(random(0, Fonts.length))];
  f = createFont(Font, fontSize);
  textFont(f);

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
  if ((Vx > 11)&&(Vx <= 16)) {
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


  if ((Org >= 5)&&(randA > 3)) { 
    adj = ""; // don't display adjective
    if ((Artx == 2) && (Nx < 3)) { // check article and noun picked 
      art = "an "; // transform "a" into "an"
    }
  } else { 
    if ((Artx == 2) && (Ax < 4)) { // check article and adjective
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
    //  }
  }
  // }
  //poema2();
  //}
}

