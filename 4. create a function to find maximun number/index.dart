void findMaxAndSecondMax(List<int> list) {
  int max = list[0];
  int secondMax = list[0];

  for (int num in list) {
    if (num > max) {
      max = num;
    }
  }

  bool foundSecond = false;
  for (int num in list) {
    if (num < max) {
      if (!foundSecond || num > secondMax) {
        secondMax = num;
        foundSecond = true;
      }
    }
  }

  if (!foundSecond) {
    print("max : $max, secondMax : not found");
    return;
  }

  print("max : $max, secondMax : $secondMax");
}

void main() {
  List<int> numbers = [5, 3, 8, 1, 9, 2];

  print('List: $numbers');
  findMaxAndSecondMax(numbers);
}
