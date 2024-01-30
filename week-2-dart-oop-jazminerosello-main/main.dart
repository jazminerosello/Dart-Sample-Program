

//ROSELLO, MA. JAZMINE P.
//2021-09665
//CMSC 23 - B5L

/* 
  TODO:
    Import the necessary files
*/


import 'commuter/regular.dart';
import 'commuter/senior.dart';
import 'vehicle/bus.dart';
import 'vehicle/taxi.dart';



main() {
  /* 
  TODO:
    Instantiate 2 buses and 2 taxis with the following initial values:
      - bus capacity: 3 and 5
      - taxi capacity: 1 and 2
  */



  Bus bus0 = Bus(3);
  Bus bus1 = Bus(5);
  
  Taxi taxi0 = Taxi(1);
  Taxi taxi1 = Taxi(2);
  

  /* 
  TODO:
    Instantiate 5 regular commuters and 3 senior/pwd commuters with the following initial values:
      - regular wallets: 500, 400, 100, 20, 150
      - senior/pwd wallets: 1000, 200, 80
  */

  Regular regular0 = Regular(500);
  Regular regular1 = Regular(400);
  Regular regular2 = Regular(100);
  Regular regular3 = Regular(20);
  Regular regular4 = Regular(150);

  Senior seniorpwd0 = Senior(1000);
  Senior seniorpwd1 = Senior(200);
  Senior seniorpwd2 = Senior(80);

  // / print the fare matrix
  bus0.printFareMatrix();
  taxi0.printFareMatrix();
 
  
print("======================\n");


  print("\n|| RIDING BUS 0 ||");
  regular0.ride("Taft", bus0);
  regular1.ride("Magallanes", bus0);
  regular2.ride("Guadalupe", bus0);
  seniorpwd0.ride("Taft", bus0);

  
  print("\nBus 0 Passengers:");
  bus0.printPassengers();
  

print("======================\n");


  print("\n|| RIDING BUS 1 ||");
  regular3.ride("Buendia", bus1);
  regular4.ride("Ayala", bus1);
  regular0.ride("Ayala", bus1);
  regular1.ride("Ayala", bus1);
  seniorpwd1.ride("Guadalupe", bus1);
  seniorpwd2.ride("Ayala", bus1);

  print("\nBus 1 Passengers: ");
  bus1.printPassengers();

  print("======================\n");


  print("\n|| RIDING TAXI 0 ||");
  seniorpwd0.ride("Guadalupe", taxi0);
  seniorpwd1.ride("Ayala", taxi0);

  print("\nTaxi 0 Passengers");
  taxi0.printPassengers();

 print("======================\n");


  print("\n|| RIDING TAXI 1 ||");
  seniorpwd2.ride("Guadalupe", taxi1);
  seniorpwd0.ride("Ayala", taxi1);
  regular2.ride("Taft", taxi1);

  print("\nTaxi 1 Passengers");
  taxi1.printPassengers();


 print("======================\n");

//   // TODO: fill in the needed values
  
  //use the instances declared and initialized here in main to get the attributes that keep tracks on the count
  //of data that is needed for printing the log, even though those attributes are set in private
  //remember that the instances can access it since they are the subclass of the superclass where we initialized the 
  //attributes so they are really allowede to get the value especially that we use getters and setters for those attributes
  var noVehicles = bus0.vCount;
  var bcount = bus0.bCount;
  var tCount = taxi0.tcount;
  var pcount = regular0.pcount;
  var rcount = regular0.rcount;
  var scount = seniorpwd0.scount;

  print('''
    [ LOG ]
    Number of Vehicles: $noVehicles
    Number of Buses: $bcount
    Number of Taxis: $tCount
    
    Number of Passengers: $pcount
    Number of Regular Passengers: $rcount
    Number of Senior/PWD Passengers: $scount
''');
}
