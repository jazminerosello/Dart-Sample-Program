//ROSELLO, MA. JAZMINE P.
//2021-09665
//CMSC 23 - B5L

//IMPORT THE NECESARY MODULES OR FILES
import '../vehicle/vehicles.dart';
import 'commuter.dart';


class Regular extends Commuter{
  
  final String type = "REG"; 
  static int regCount = 0; //to keep track to the count of the regular passengers
  get rcount => regCount; //since it is in a static form it needs a getter

  /**CONSTRUCTOR */
  Regular(double budget):super(budget){
    regCount++; //increment regCount
    Commuter.passengerCount++; //increment the passenger count
    this.setID = this.type + (regCount-1).toString(); //create a commuterID for this instance
  }
  
 /**MEthod that needs to be implemented and override since this is in the abstract superclass*/
  void ride(String desti, Vehicles vh){
    
    // this.desti = desti;
    var index = -1;
    var id = vh.vehicleId; //get the vehicleID of the vechicle that is being passed on the parameter
    double farePrice = 0; //set 0 as farePrice
    int possibleToadd = vh.numOfPassengers + 1; //use this one for future dictation kung ilang magiging passenger na gagamitin to check if puno na yung isang vehicle na balak sakyan nitong instance na passenger


    for(var i=0; i<vh.destination.length; i++){
      if(desti == vh.destination[i]){
        index = i; //get the index nung location na gusto sakyan ni passenger sa destination list
      }
    }

     //check if kaya pa magsakay ng sasakyan by checking if capacity is equal or greater than na sa possibletoadd
    //kung pasok pa then kaya pa sumakay ni passenger
    if(vh.capacity >= possibleToadd){
      farePrice = vh.fare[index]; //if kaya pa sumakay then update the farePrice as yung fare ng destination niya

      //check if the farePrice value is still within the budget of this regular commuter instance
      if(this.wallet >= farePrice){
        //if yes then update the wallet 
          this.setwallet = this.wallet - farePrice;
          //increment the properties that needs to be keep track
          vh.numOfPassengers ++;
          // vh.totalPassengers++;
          //add the passenger to the listOfPassengers
          vh.listOfPassenger.add(this);
          //for the travel log of this customer add it to the map
          this.travelLog[vh.vehicleId] = desti;
          print("Passenger $cID successfully boarded $id with a fare of P$farePrice");
      }else{ //display prompt message if the passenger's wallet cannot pay for the fare
        print("Passenger $cID does not have enough fare to ride $id!");
      }

    }else{ //display prompt message if the vehicle a commuters wants to ride is already full
      print("Sorry, the vehicle $id is already full");
    }
    
  }

  

}