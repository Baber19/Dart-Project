import 'main.dart';

void passengerDetails() {
  print("");
  print("===Welcome To Passenger Details Section===");
  print("");
  if (registeredPassengers.isEmpty) {
    print(
        "You are not a registered passenger please login to your account or sign up");
  } else {
    print("Your Name is : ${registeredPassengers[0]}");
    print("Your Email is : ${registeredPassengers[1]}");
    print("Your Password is : ${registeredPassengers[2]}");
  }
}
