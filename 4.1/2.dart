List<String> getUniqueNames(List<String> names) => List<String>.from(Set<String>.from(names));

void main() {
  List<String> inputNames = ["Krish", "Nayan", "Harsh", "Ajay", "raj", "Aman"];
  
  List<String> uniqueNames = getUniqueNames(inputNames);

  print("Original Names: $inputNames");
  print("Unique Names: $uniqueNames");
}
