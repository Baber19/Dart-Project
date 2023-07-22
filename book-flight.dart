import 'dart:io';

import 'flightData.dart';
import 'print-ticket.dart';

void bookFlights() {
  print("\nDo you want to book any flight? (yes/no)");
  String answer = stdin.readLineSync()?.trim().toLowerCase() ?? "";

  if (answer == "yes") {
    print(
        "\nEnter the flight number you want to book:  Please Remember that All Letters of Your Desire Flight should be Capital");
    String flightNumber = stdin.readLineSync()?.trim() ?? "";

    var matchedFlights = flightData['flights'] as List<Map<String, dynamic>>;

    var bookedFlight = matchedFlights.firstWhere(
      (flight) => flight['flight_number'] == flightNumber,
      orElse: () => <String, Object>{},
    );

    if (bookedFlight != null) {
      print("\nYou have successfully booked the following flight:");
      printTicket(
          bookedFlight); // Calling the printTicket function with the booked flight
    } else {
      print(
          "\nSorry, the flight with the provided number was not found among the available flights.");
    }
  } else {
    print("\nThank you for using PIA Flight Search System!");
  }
}
