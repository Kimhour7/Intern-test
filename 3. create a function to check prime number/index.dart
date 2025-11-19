void main() {
  List<int> testNumbers = [1, 2, 3, 4, 5];

  for (int num in testNumbers) {
    String result = isPrime(num) ? 'Prime Number' : 'Not Prime Number';
    print('$num: $result');
  }
}

bool isPrime(int n) {
  if (n == 2) {
    return true;
  } else {
    return false;
  }
}