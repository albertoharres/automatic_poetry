void sentence() {

  background(0);
  
  //Font used.
  textFont(f);

  // Random Operators

  // pick random value inside each lists of strings declared in "lists"
  radAdjx = int(random(0, radicals.length)); // Radical of the Adjective.
  radVx = int(random(0, radicals.length)); // Radical of the Verb.
  preVx = int(random(0, verbPre.length)); // Prefix of the Verb.
  sufVx = int(random(0, verbSuf.length)); // Sufix of the Verb
  preAdjx = int(random(0, adjPre.length)); // Prefix of the Adjective.
  sufAdjx = int(random(0, adjSuf.length)); // Sufix of the Adjective.

  radAdj = radicals[radAdjx]; // Radical of the Adjective.
  radV = radicals[radVx]; // Radical of the Verb.
  preV = adjPre[preVx]; // Prefix of the Verb.
  sufV = adjSuf[sufVx]; // Sufix of the Verb.
  preAdj = adjPre[preAdjx]; // Prefix of the Adjective.
  sufAdj = adjSuf[sufAdjx]; // Sufix of thdjective.
  
  Verb = preV + radV + sufV + " "; // full verb.
  Adj = preAdj + radAdj + sufAdj + " "; // full adjective
  art = "the" + " "; // "the" article 
  
  E_v = textWidth(Verb); // Size of the full verb string.
  E_adj = textWidth(Adj); // Size of the full adjective string.
  E_art = textWidth(art); // Size of the article
  
  // Positioning order of strings in phrase. 
  pos[0] = 20;             
  pos[1] = pos[0] + E_art; 
  pos[2] = pos[1] + E_adj; 
  
  p_art = 0; 
  p_Adj = 1; 
  p_V = 2;   
  
  // Displaying text
  text(art, pos[p_art], L0);
  text(Adj, pos[p_Adj], L0);
  text(Verb, pos[p_V], L0);
  
}

