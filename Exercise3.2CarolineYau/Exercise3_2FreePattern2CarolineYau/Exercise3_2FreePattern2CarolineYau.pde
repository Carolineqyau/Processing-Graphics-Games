//Caroline Yau
//Exercise 3.2 Free Patterns

//2. LightSpots

//color c1[] = {#5e77bd, #8a67ca, #cd65df, #d551a1, #de483e, #f29460, #fa9827, #fac027, #fad817};
//color c2[] = {#81d7df, #65dfd3, #74eac1, #52f181, #4ef039, #abf557, #cbfd37, #e5fa26, #fffe3d};
//color c3[] = {#8289ff, #ffdf82, #82d1ff, #ffb882, #82fffa, #ff9d82, #82ffa4, #ff8482, #a8ff82};
//color c4[] = {#be999f, #cb9997, #d9aba2, #c39081, #d1a892, #d0a17e, #ccae8f, #ceba9e, #cbb88a};
//color c5[] = {#421812, #51281f, #5e2e1c, #674430, #784b25, #715737, #795c2a, #74643c, #a3925a};

color[][] c = {{#5e77bd, #8a67ca, #cd65df, #d551a1, #de483e, #f29460, #fa9827, #fac027, #fad817}, 
               {#81d7df, #65dfd3, #74eac1, #52f181, #4ef039, #abf557, #cbfd37, #e5fa26, #fffe3d}, 
               {#8289ff, #ffdf82, #82d1ff, #ffb882, #82fffa, #ff9d82, #82ffa4, #ff8482, #a8ff82}, 
               {#be999f, #cb9997, #d9aba2, #c39081, #d1a892, #d0a17e, #ccae8f, #ceba9e, #cbb88a}, 
               {#421812, #51281f, #5e2e1c, #674430, #784b25, #715737, #795c2a, #74643c, #a3925a}};
void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  blendMode(MULTIPLY);
  noStroke();
  for (int j=0; j<5; j++){
    for (int i=0; i<9; i++){
      fill(c[j][i]);
      ellipse(50+i*50, 50+j*100, 100, 100);
    }
  }
}
