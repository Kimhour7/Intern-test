void main() {
  List<int> array = [5, 3, 8, 1, 2];
  int temp;

  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array.length; j++) {
      if (array[i] < array[j]) {
        temp = array[i];
        array[i] = array[j];
        array[j] = temp;
      }
    }
  }
  
  print('Sorted array: $array');
}