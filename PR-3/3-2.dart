import 'dart:io';

class Product {
  int pro_id;
  String pro_name;
  int pro_qty;
  double pro_price;

  Product(this.pro_id, this.pro_name, this.pro_qty, this.pro_price);
}

class Customer {
  int cust_id;
  String cust_name;
  String cust_contact;
  List<Product> cust_cart = [];

  Customer(this.cust_id, this.cust_name, this.cust_contact);
}

void main() {
  List<Customer> customers = [];

  var choice;
  do {
    print("\n1. Add Customer");
    print("2. Display Customer Details");
    print("3. Exit");
    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync() ?? "0");

    switch (choice) {
      case 1:
        addCustomer(customers);
        break;
      case 2:
        displayCustomerDetails(customers);
        break;
      case 3:
        exit(0);
      default:
        print("Invalid choice. Please try again.");
    }
  }while(choice != 3);
}

void addCustomer(List<Customer> customers) {
  stdout.write("Enter Customer ID: ");
  int custId = int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter Customer Name: ");
  String custName = stdin.readLineSync() ?? "DefaultName";

  stdout.write("Enter Customer Contact: ");
  String custContact = stdin.readLineSync() ?? "DefaultName";

  Customer customer = Customer(custId, custName, custContact);
  customers.add(customer);

  while (true) {
    print("\n1. Add Product to Cart");
    print("2. Finish Shopping");
    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addProductToCart(customer);
        break;
      case 2:
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}

void addProductToCart(Customer customer) {
  stdout.write("Enter Product ID: ");
  int proId = int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter Product Name: ");
  String proName = stdin.readLineSync() ?? "DefaultName";

  stdout.write("Enter Product Quantity: ");
  int proQty = int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter Product Price: ");
  double proPrice = double.parse(stdin.readLineSync() ?? "0");

  Product product = Product(proId, proName, proQty, proPrice);
  customer.cust_cart.add(product);

  print("Product added to cart successfully!");
}

void displayCustomerDetails(List<Customer> customers) {
  stdout.write("Enter Customer ID to search: ");
  int searchId = int.parse(stdin.readLineSync()?? "0");

  Customer foundCustomer = customers.firstWhere(
  (customer) => customer.cust_id == searchId,
  orElse: () => Customer(-1, 'Not Found', 'N/A'),
);

  if (foundCustomer !=-1) {
    print("\nCustomer ID: ${foundCustomer.cust_id}");
    print("Customer Name: ${foundCustomer.cust_name}");
    print("Customer Contact: ${foundCustomer.cust_contact}");

    if (foundCustomer.cust_cart.isNotEmpty) {
      print("\nProducts in Cart:");
      foundCustomer.cust_cart.forEach((product) {
        print(
            "Product ID: ${product.pro_id}, Name: ${product.pro_name}, Quantity: ${product.pro_qty}, Price: ${product.pro_price}");
      });

      double totalAmount = foundCustomer.cust_cart
          .map((product) => product.pro_qty * product.pro_price)
          .reduce((value, element) => value + element);

      print("\nTotal Amount: $totalAmount");

      double discount = calculateDiscount(totalAmount);
      print("Discount: $discount%");

      double finalAmount = totalAmount - (totalAmount * (discount / 100));
      print("Final Amount: $finalAmount");
    } else {
      print("No products in the cart.");
    }
  } else {
    print("Customer not found with ID: $searchId");
  }
}

double calculateDiscount(double totalAmount) {
  if (totalAmount >= 500 && totalAmount < 1500) {
    return 10;
  } else if (totalAmount >= 1500 && totalAmount < 3500) {
    return 20;
  } else if (totalAmount >= 3500 && totalAmount < 6500) {
    return 25;
  } else if (totalAmount >= 6500) {
    return 30;
  } else {
    return 0;
  }
}
