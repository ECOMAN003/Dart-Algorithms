void main() {
  int x = reverse2(-1);
  print(x);
}

int reverse2(int x) {
  int finalNum = 0;
  while (x != 0) {
    int r = x % 10;
    finalNum += r;
    finalNum *= 10;
    x = x ~/ 10;
  }
  finalNum = finalNum ~/ 10;
  if (finalNum > 2147483647 || finalNum < -2147483648) {
    return 0;
  }
  return finalNum;
}

int reverse(int x) {
  int y = x.abs();
  String rev = y.toString();
  rev = String.fromCharCodes(rev.codeUnits.reversed);
  y = int.parse(rev);

  if (y > 2147483647 || y < -2147483648) {
    return 0;
  }
  if (x > 0) {
    return y;
  } else {
    return 0 - y;
    
  }
}

//1534236469