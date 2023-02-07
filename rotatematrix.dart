import 'dart:io';

void main() {
  List<List<int>> Matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  displayMatrix(Matrix1);
  displayMatrix(rotateMatrix(Matrix1));
  displayMatrix(rotateMatrix(Matrix1));
  displayMatrix(rotateMatrix(Matrix1));
  displayMatrix(rotateMatrix(Matrix1));
}

List<List<int>> rotateMatrix(List<List<int>> Matrix) {
  for (var i = 0; i < Matrix.length; i++) {
    for (var j = i; j < Matrix.length; j++) {
      int swap = Matrix[i][j];
      Matrix[i][j] = Matrix[j][i];
      Matrix[j][i] = swap;
    }
  }

  for (var i = 0; i < Matrix.length; i++) {
    for (var j = 0; j < Matrix.length / 2; j++) {
      int swap = Matrix[i][j];
      Matrix[i][j] = Matrix[i][Matrix.length - j - 1];
      Matrix[i][Matrix.length - j - 1] = swap;
    }
  }
  return Matrix;
}

void displayMatrix(List<List<int>> Matrix) {
  for (var i = 0; i < Matrix.length; i++) {
    for (var j = 0; j < Matrix[1].length; j++) {
      stdout.write("${Matrix[i][j]}   ");
    }
    print("");
  }
  print("");
}
