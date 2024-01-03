import 'dart:io';

int sumOfAllElements(List<List<int>> matrix) {
  return matrix.expand((row) => row).reduce((a, b) => a + b);
}

int sumOfRow(List<List<int>> matrix, int rowIndex) {
  return matrix[rowIndex].reduce((a, b) => a + b);
}

int sumOfColumn(List<List<int>> matrix, int colIndex) {
  return matrix.map((row) => row[colIndex]).reduce((a, b) => a + b);
}

int sumOfDiagonal(List<List<int>> matrix) {
  return matrix[0][0] + matrix[1][1] + matrix[2][2];
}

int sumOfAntidiagonal(List<List<int>> matrix) {
  return matrix[0][2] + matrix[1][1] + matrix[2][0];
}

void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  while (true) {
    print("\nMenu:");
    print("1. Sum of all elements");
    print("2. Sum of specific Row");
    print("3. Sum of specific Column");
    print("4. Sum of diagonal elements");
    print("5. Sum of antidiagonal elements");
    print("0. Exit");
    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("Sum of all elements: ${sumOfAllElements(matrix)}");
        break;
      case '2':
        stdout.write("Enter the row index (0-2): ");
        int rowIndex = int.parse(stdin.readLineSync()!);
        print("Sum of row $rowIndex: ${sumOfRow(matrix, rowIndex)}");
        break;
      case '3':
        stdout.write("Enter the column index (0-2): ");
        int colIndex = int.parse(stdin.readLineSync()!);
        print("Sum of column $colIndex: ${sumOfColumn(matrix, colIndex)}");
        break;
      case '4':
        print("Sum of diagonal elements: ${sumOfDiagonal(matrix)}");
        break;
      case '5':
        print("Sum of antidiagonal elements: ${sumOfAntidiagonal(matrix)}");
        break;
      case '0':
        exit(0);
      default:
        print("Invalid choice! Please try again.");
    }
  }
}
