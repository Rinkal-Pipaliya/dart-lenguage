import 'dart:io';

void main() {
  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  List<List<int>> matrix2 = [
    [9, 8, 7],
    [6, 5, 4],
    [3, 2, 1]
  ];

  print("Matrix 1:");
  printMatrix(matrix1);

  print("\nMatrix 2:");
  printMatrix(matrix2);

  List<List<int>> result = addMatrices(matrix1, matrix2);

  print("\nResultant Matrix:");
  printMatrix(result);
}

List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> result = List.generate(3, (i) => List.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  }

  return result;
}

void printMatrix(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    stdout.write("\n");
  }
}
