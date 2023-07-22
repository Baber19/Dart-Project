import 'main.dart';

void printTicket(Map<String, dynamic> flight) {
  print("");
  print("===Welcome To Boarding Pass Section===");
  print("");
  print("Your email is  : $email");
  print("Your name is  : $name");
  print("Flight Number: ${flight['flight_number']}");
  print("Origin: ${flight['origin']}");
  print("Destination: ${flight['destination']}");
  print("Departure Time: ${flight['departure_time']}");
  print("Arrival Time: ${flight['arrival_time']}");
  print("Duration: ${flight['duration']}");
  print("Aircraft: ${flight['aircraft']}");
  print("Rent: ${flight['rent']}");
  print("=============================");
}
