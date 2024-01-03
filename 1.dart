void main() {
  List<int> negative = [5, -3, 8, -2, -9, 4, 0, -7];

  print("Negative elements in the array:");
  for (var num in negative) {
    if (num < 0) {
      print(num);
    }
  }
}
