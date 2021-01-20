//Caroline Yau
//Reading Assignment 4

//Exercise 3

int [] array1 = {1, 3, 5, 7, 9, 11};
int [] array2 = {2, 4, 6, 8, 10, 12};

void setup() {
  printArray(multiply(array1, array2));
}

int[] multiply(int [] array1, int[] array2) {
  int [] output = new int[array1.length];
  for(int i = 0; i < array1.length; i++) {
    output[i] = array1[i] * array2[i];
  }
  
  return(output);
}
