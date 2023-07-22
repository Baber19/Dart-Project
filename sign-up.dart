import 'dart:io';

import 'main.dart';

void passengerSignUp() {
  var name, email, password;
  bool isEmailTrue;
  bool isPasswordTrue;

  print("Please Enter Your Name");
  name = stdin.readLineSync();
  registeredPassengers.insert(0, name);

  do {
    print("Please Enter Your Email");
    email = stdin.readLineSync();
    isEmailTrue =
        (email?.contains("@") == true && email?.contains(".com") == true);

    if (isEmailTrue) {
      registeredPassengers.insert(1, email);
    } else {
      print("Please Enter Valid Email That Must Contain @ and .com");
    }
  } while (!isEmailTrue);

  do {
    print("Please Enter Your Password");
    password = stdin.readLineSync();
    isPasswordTrue = (password?.contains(RegExp(r'[A-Z]')) == true &&
        password?.contains(RegExp(r'[0-9]')) == true);

    if (isPasswordTrue) {
      registeredPassengers.insert(2, password);
    } else {
      print("Your Password Must Contain a Capital Letter and a Number");
    }
  } while (!isPasswordTrue);
}
