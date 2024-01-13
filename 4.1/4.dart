double calculateSuccessPercentage({double occupation1 = 0, double occupation2 = 0, double occupation3 = 0, double occupation4 = 0, double occupation5 = 0}) {
  double totalMarks = occupation1 + occupation2 + occupation3 + occupation4 + occupation5;

  double percentage = totalMarks / 5;

  return percentage;
}

void main() {
  double marksOccupation1 = 80.00;
  double marksOccupation2 = 85.65;
  double marksOccupation3 = 85.25;

  double successPercentage = calculateSuccessPercentage(
    occupation1: marksOccupation1,
    occupation2: marksOccupation2,
    occupation3: marksOccupation3,
  );

  print("Success Percentage: $successPercentage%");
}
