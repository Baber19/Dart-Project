// ignore_for_file: unused_local_variable, unused_import

import 'dart:io';

import 'book-flight.dart';
import 'flightData.dart';
import 'passengerInfo.dart';
import 'print-ticket.dart';
import 'searchFlight.dart';
import 'sign-up.dart';

var email, name, password;
bool? isEmailTrue, isPasswordTrue;
var registeredPassengers = [];
void main(List<String> args) {
  print("");
  print("===Welcome to PIA online Flight Reservation System===");
  print("");
  print("For Ticket Booking please create your account or Login");
  int choice = 0;
  do {
    print("");
    print("          Press 1 For SignIn");
    print("          Press 2 For SignUp");
    print("          Press 3 For Passenger Details");
    print("          Press 4 For Search Flights");
    print("          Press 5 For Book Flight");
    print("          Press 6 For Generate Flight Ticket");

    print("");

    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      passengerSignIn();
    } else if (choice == 2) {
      passengerSignUp();
    } else if (choice == 3) {
      passengerDetails();
    } else if (choice == 4) {
      getUserInput();
    } else if (choice == 5) {
      bookFlights();
    } else if (choice == 6) {
      printTicket(flightData);
    } else {
      print("Exiting");
    }
  } while (choice != 6);
}
