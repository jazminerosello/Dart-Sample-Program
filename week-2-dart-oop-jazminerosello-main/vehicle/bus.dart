//ROSELLO, MA. JAZMINE P.
//2021-09665
//CMSC 23 - B5L

//IMPORT THE NECESARY MODULES OR FILES
import 'vehicles.dart'; //import the superclass

class Bus extends Vehicles{
  //ATTRIBUTES
  static int busCount = 0; //to count the busses instances
  int waitingTime = 30; //for the waiting time of bus

  //GETTER
  get bCount => busCount; //getter for the busCount

  /** CONSTRUCTOR **/

  //also pass the proper parameters required in the vehicle superclass since taxi is one of
  //its subclass using super keyword
  Bus(int cap):super("BUS", [20, 30, 40, 50, 60]){
    busCount ++; //increment busCount
    Vehicles.vehicleCount++; //increment vehicleCount
    //use this. keyword since capacity and vehicleID is only for this instance even though
    //those attributes are being initialized in the superclass, remember that subclass inherits the features 
    //a superclass have. With the use of this. we are saying that capacity and vehicleID are only for this instance, it is unique only for this instance of bus
    this.capacity = cap;
    this.vehicleId = type + (busCount-1).toString();
    //add the vehicleID of this instance to the listOfVehicles list
    Vehicles.listOfVehicles.add(vehicleId);
  }  
  
}