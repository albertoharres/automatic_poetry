/*
(because / since) + Object or (s)he + Verb + Obj2
 and + Verb + Object
 or + Obj2
 to + Verb + Art(his, her) + Obj 
 but + Object or (s)he + it 
 */
String S1;

String Cj, N0, V0, O0, art0, pro, A0, Adv, A1;

float E_n0, E_v0, E_o0, E_art0, E_pro, E_a0, E_adv;

int N0x, V0x, A0x, Cjx, obj0x, Adv0x, O0x, Art0x, Advx, A1x;

int posCj, posN0, posV0, posO0, posart0, pospro, posA0, posAdv;

float R0, R1, R2, R3;

void since() {

  R0 = random(0, 10);
  R1 = random(0, 10);

  Cj = "since ";

  Artx = int(random(0, article.length)); // Article
  N0x = int(random(0, noun.length)); // Noun
  A0x = int(random(0, adj0.length)); // Adjective
  A1x = int(random(0, adjAb.length)); // Adjective 2
  O0x = int(random(0, obj0.length)); // Object
  Advx = int(random(0, adv.length)); // Adverb

  O0 = obj0[O0x];
  A0 = adj0[A0x];
  Adv = adv[Advx];
  A1 = adjAb[A1x];

  if (fem == true) {
    pro = "she ";
  } else {
    pro = "he ";
  }



  if (present == true) {

    V0x = int(random(0, verb1.length)); // Verb in Present
    V0 = verb1[V0x];
    /*    O0 = "all was lost ";
     O0 = "there was nothing to lose ";
     O0 = "it didn't matter ";
     //    O0 = pro + V0 + "to ";
     //O0 = Obj + "was" + Adj*/
    //O0 = O + "is " + Adv + A0 + O0
    S1 = O + "is " + A1 + O0;
  } else {

    V0x = int(random(0, verb0.length)); // Verb in Past 
    V0 = verb0[V0x];

    O0 = "the " + O0 + "is " + A0;
    //  O0 = "it doens't matter "
    //   O0 = "there is nothing to lose "
    //   O0 = "all is lost "
    S1 = Cj + O0;
  }


  L2 = L1 + fontSize;
  text(S1, pos[0], L2);
}
/*
and() {
 }
 
 to() {
 }
 
 but() {
 }
 */
