void main() {
  List<int> numbers = [5, -3, 50, -2, -9, 4, 0, -7];

  int largest = numbers[0];

  for (var num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }

  print("The largest number in the array is: $largest");
}
