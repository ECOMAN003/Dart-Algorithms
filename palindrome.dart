void main() {
  print(isPalindrome(1001));
}

bool isPalindrome(int x) {
  final y = x.toString();
  if (y == y.split('').reversed.join('')) {
    return true;
  }
  return false;
}
