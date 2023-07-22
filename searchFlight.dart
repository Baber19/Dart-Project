import 'dart:io';

// flightData is assumed to be imported from 'flightData.dart'
import 'flightData.dart';

String? email;
String? password;
bool? isEmailTrue;
bool? isPasswordTrue;
List<String> registeredPassengers = []; // List to store registered user emails

List<Map<String, dynamic>> searchFlights(String origin, String destination) {
  List<Map<String, dynamic>> matchedFlights = [];

  for (var flight in flightData['flights']) {
    if (flight['origin'] == origin && flight['destination'] == destination) {
      matchedFlights.add(flight);
    }
  }

  return matchedFlights;
}

void getUserInput() {
  print("");
  print("===Welcome To Flight Search Section===");
  print("");

  print(
      "Enter the origin: Please Remember that First Letter of Your origin should be in Capital letter");
  String origin = stdin.readLineSync()?.trim() ?? "";

  print(
      "Enter the destination: Please Remember that First Letter of Your destination should be in Capital letter");
  String destination = stdin.readLineSync()?.trim() ?? "";

  List<Map<String, dynamic>> matchedFlights =
      searchFlights(origin, destination);

  displayFlights(matchedFlights);
}

void displayFlights(List<Map<String, dynamic>> matchedFlights) {
  if (matchedFlights.isNotEmpty) {
    print("");
    print("===Welcome To Available Flights On Your Query Section===");
    print("");

    print("\nMatched Flights:");
    print("");

    for (var flight in matchedFlights) {
      print("Flight Number: ${flight['flight_number']}");
      print("Origin: ${flight['origin']}");
      print("Destination: ${flight['destination']}");
      print("Departure Time: ${flight['departure_time']}");
      print("Arrival Time: ${flight['arrival_time']}");
      print("Duration: ${flight['duration']}");
      print("Aircraft: ${flight['aircraft']}");
      print("Rent: PKR ${flight['rent']}");
      print("-------------------------");
    }
  } else {
    print("\nNo flights found for the given origin and destination.");
  }
}

bool passengerSignIn() {
  print("");
  print("===Welcome To SignIn Section===");
  print("");

  do {
    print("Please Enter Your Email");
    email = stdin.readLineSync();
    isEmailTrue =
        (email?.contains("@") == true && email?.contains(".com") == true);

    if (isEmailTrue!) {
      print("Your email is  : $email");
    } else {
      print("Please Enter Valid Email That Must Contain @ and .com");
    }
  } while (!isEmailTrue!);

  do {
    print("Please Enter Your Password");
    password = stdin.readLineSync();
    isPasswordTrue = (password?.contains(RegExp(r'[A-Z]')) == true &&
        password?.contains(RegExp(r'[0-9]')) == true);

    if (isPasswordTrue!) {
      print("Your password is  : $password");
    } else {
      print("Your Password Must Contain a Capital Letter and a Number");
    }
  } while (!isPasswordTrue!);

  if (registeredPassengers.contains(email) &&
      registeredPassengers.contains(password)) {
    print("Login Successful");
    return true; // User is logged in successfully
  } else {
    print("User Not Found. Please Create Your Account by Pressing 2");
    return false; // User is not logged in
  }
}

void main() {
  bool isLoggedIn = passengerSignIn();

  if (isLoggedIn) {
    // Proceed with the flight search and booking
    getUserInput();
    // ... Add the booking function here if needed
  } else {
    print("You must log in to access flight search and booking.");
  }
}
