//String[] DES111 = {"A", "B", "C", "D", "E"};
int[] DES111 = {0, 1, 2, 3, 4};
void setup() {
  noLoop();
}

void draw() {
  //DES111 = append(DES111, "F");
  for (int i=5; i<10; i++){
    DES111 = append(DES111, i);
  }
  println(DES111);
}
