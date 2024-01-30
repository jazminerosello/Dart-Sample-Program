//ROSELLO, MA. JAZMINE P.
//2021-09665
//CMSC 23 - B5L

//IMPORT THE NECESARY MODULES OR FILES
import 'vehicles.dart'; //import the superclass

class Taxi extends Vehicles{
  //ATTRIBUTES
  static int taxiCount = 0; //to count taxi instances
  int waitingTime = 5; //for the waiting time

  //GETTER
  get tcount => taxiCount; //to get the taxiCount since it is in a static form
  

  /** CONSTRUCTOR **/

  //also pass the proper parameters required in the vehicle superclass since taxi is one of
  //its subclass using super keyword
  Taxi(int cap):super("TAXI", [70, 80, 90, 100, 110]){
    taxiCount++; //increment the taxiCOunt since we will be using it for the vehicleID
    Vehicles.vehicleCount++; //increment the vehicleCount
    //use this. keyword since capacity and vehicleID is only for this instance even though
    //those attributes are being initialized in the superclass, remember that subclass inherits the features 
    //a superclass have. With the use of this. we are saying that capacity and vehicleID are only for this instance, it is unique only for this instance of taxi
    this.capacity = cap; 
    this.vehicleId = type + (taxiCount-1).toString();

    //add the vehicleID to the list of vehicles list in the superclass vechiles
    Vehicles.listOfVehicles.add(vehicleId);
  }  

}