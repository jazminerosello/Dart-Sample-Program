//ROSELLO, MA. JAZMINE P.
//2021-09665
//CMSC 23 - B5L

//IMPORT THE NECESARY MODULES OR FILES
import '../vehicle/vehicles.dart';
import 'commuter.dart';



class Senior extends Commuter{
  
  final String type = "SENPWD"; 
  static int senCount = 0; //to count the senior passengers
  get scount => senCount; //to get the count the senior passengers
  
  /**CONSTRUCTOR FOR SENIOR CLASS */
  Senior(double budget):super(budget){ //use super keyword to pass proper attributes
    senCount++; //increment the senCount
    Commuter.passengerCount++; //also the passenger count increment
    this.setID = this.type + (senCount-1).toString(); //set the id for this instance
  }
  
  /**MEthod that needs to be implemented and override since this is in the abstract superclass*/
  void ride(String desti, Vehicles vh){
    
    // this.desti = desti; //set desti as the desti that is being passed
    var index = -1;
    var id = vh.vehicleId; //get the vehicleID of the vechicle that is being passed on the parameter
    double farePrice = 0; //set 0 as farePrice
    int possibleToadd = vh.numOfPassengers + 1; //use this one for future dictation kung ilang magiging passenger na gagamitin to check if puno na yung isang vehicle na balak sakyan nitong instance na passenger

    //
    for(var i=0; i<vh.destination.length; i++){
      if(desti == vh.destination[i]){
        index = i; //get the index nung location na gusto sakyan ni passenger sa destination list
      }
    }

    //check if kaya pa magsakay ng sasakyan by checking if capacity is equal or greater than na sa possibletoadd
    //kung pasok pa then kaya pa sumakay ni passenger
    if(vh.capacity >= possibleToadd){
      farePrice = vh.fare[index] - (vh.fare[index]*.20); //since senior then may 20% discount so update the value of the farePrice

      //check if kaya pa ng wallet ni passenger bayaran yung farePrice,
      if(this.wallet >= farePrice){
          //update the wallet usign the setter
          this.setwallet = this.wallet - farePrice;
          //increment the numOfPassengers and totalPassengers
          vh.numOfPassengers ++;
          // vh.totalPassengers++;
          vh.listOfPassenger.add(this); //add this passenger to the listOfPassenger
          
          this.travelLog[vh.vehicleId] = desti; //then add yung vehicleID and destination sa map or travel log ng passenger
          

          print("Passenger $cID successfully boarded $id with a fare of P$farePrice");
      }else{ //else print prompt message
        print("Passenger $cID does not have enough fare to ride $id!");
      }

    }else{ //else print prompt message
      print("Sorry, the vehicle $id is already full");
    }
  }
}