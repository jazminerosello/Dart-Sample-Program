//ROSELLO, MA. JAZMINE P.
//2021-09665
//CMSC 23 - B5L

//IMPORT THE NECESARY MODULES OR FILES
import 'dart:io'; //THIS IS USE FOR PRINTING DISPLAY
import '../commuter/commuter.dart';


abstract class Vehicles{
  var destination = ["Taft", "Magallanes", "Ayala", "Buendia", "Guadalupe" ];
  String vehicleId = "";
  String type = "";
  
  int numOfPassengers = 0; //number of passengers per vehicle type
  // int totalPassengers =0; //total of passengers all in all
  int capacity = 0; //capacity of bus or taxi

  List<Commuter> listOfPassenger = [];
  List<double> fare = [];

  static int vehicleCount = 0; //count the vehicle
  static var listOfVehicles = []; //to list all the vehicles instantiated y their vehicleID

  get vCount => vehicleCount; //getter for vehiclecount since it is in a static form

  Vehicles(this.type, this.fare);

  /** METHOD IMPLEMENTATION**/
  //since taxi and bus class have the same implementation for printFareMatrix() and for printPassengers, we
  //implement these 2 methods here in the superclass vehicles

  void printFareMatrix(){
    print("\n***** $type Fare Matrix *****");
    int c = 0;
    //get each location in the destnation list using for loop
    for(var dest in this.destination){
      var fr = this.fare[c]; //to get the fare per destination we use integer c that we increment everytime
      print("\t $dest: P$fr");
      c++;
    }
    print("***************************");
  }


  //to print passengers we use for loop and access each passenger in the listOfPassenger list
  //stdout is used to avoid printing a new line in the terminal
  void printPassengers(){
   
    print("[$vehicleId] - Max Capacity: $capacity");
    for(var v in this.listOfPassenger){
      var id = v.cID; //get the commuter id using the getter implemented in the superclass commuter
      double balance = v.wallet; //get the balance or wallet per passenger useing the getter implemented in the superclass commuter
      
      //print a proper statement
      stdout.write("[$id] Wallet balance: $balance | Travel Log: [");
      
      //for the travel log, the vehicle id and destination that a passenger rode in a map type
      for(var k in v.travelLog.keys){
        var val = v.travelLog[k];
        stdout.write("$k - $val ");
      }
      stdout.write("]");
      print("\n");
    }
  }
}