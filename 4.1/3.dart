import 'dart:io';

double calculate(double n1, double n2, String operation) {
  double result;

  switch (operation) {
    case '+':
      result = n1 + n2;
      break;
    case '-':
      result = n1 - n2;
      break;
    case '*':
      result = n1 * n2;
      break;
    case '/':
      result = n1 / n2;
      break;
    default:
      print("Invalid operation");
      exit(1);
  }

  return result;
}
void main(){
    double n1,n2;

    String operation;

    stdout.write("Enter The first Number:");
    n1=double.parse(stdin.readLineSync() ?? "0");

     stdout.write("Enter The Second Nuber :");
    n2=double.parse(stdin.readLineSync() ?? "0");

     stdout.write("Enter The An operation (+,-,*,/): ");
    operation=stdin.readLineSync()?? "0";

  

    double result = calculate(n1 ,n2,operation);

    print("Result: $result");

}