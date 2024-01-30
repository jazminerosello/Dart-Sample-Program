//ROSELLO, MA. JAZMINE P.
//2021-09665
//CMSC 23 - B5L

import '../vehicle/vehicles.dart'; //import the vehicle superclass since we use this one for the parameter in the method ride

abstract class Commuter {
  //these attributes are initialized here 
  //since senior and regular both have these attributes 
  String _commuterID =""; 
  double _wallet = 0; //set wallet as 0
  // String desti = "";

  static int passengerCount = 0; //to count the passengers, it is in static because all subclass of commuter have the same value for this one
  var _travelLog = new Map(); //for the location and vehicleID a passenger rode

  Commuter(this._wallet); //store the value being passed in _wallet that is set to private from the subclass

  //setters for those private access modifier attributes
  set setID(String commuterID) {
    this._commuterID = commuterID;
  }

  set setwallet(double wallet){
    this._wallet = wallet;
  }

  //getters for those that are static and private
  double get wallet => this._wallet;
  get cID => this._commuterID;
  get travelLog => this._travelLog;
  get pcount => passengerCount;
  
  //methods that subclass of this superclass needs to implement
  void ride(String dest, Vehicles vehicle);
}

