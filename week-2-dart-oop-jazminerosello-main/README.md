# Exercise 2
### Author: MA. JAZMINE P. ROSELLO
### Student Number: 2021-09665
### Section:  CMSC 23 - B5L

## App Description
The main.dart contains the instantiation of all instances of bus,taxi,senior passengers and regular passengers. At the top of the code, you will see the import, those are used to import needed modules/packages. 

On the other hand, for the vehicle package, there are 3 files there: First one is the vehicles.dart which is an abstract superclass that contains the common attributes its subclasses have, the two methods that are similarly implemented for its subclasses, that's why those methods are already implemented in the superclass vehicles. For the bus.dart, those are an object of vehicles superclass that contains the constructor and attributes needed, the same for the taxi.dart. 

Also, for the commuter package or folder, there are also 3 files: the commuter.dart, again an abstract class that contains attributes that its subclasses have in common, the method ride() that needs to be overriden by its subclasses. Its subclasses are senior.dart and regular.dart.

The app or code simply keep tracks record for the travel log of a passenger, the vehicleID of the vehicle it rode and the location the passenger went and also it keeps track the wallet of the passenger, if it can ride a vehicle or not and if it can then the wallet of the passenger will be updated by subtracting the fare from its balance. It also keeps track for the list of passengers a vehicle had by the commuter id. In the terminal, if you run the main.dart, you will see the passengers of the vehicle, their wallet and also the list of vehicles they rode and the location.

## Things done in the code
Polymorphism was done in the code with the use of the array list to keep track to the data that needed to adn with the use of Map() for the passengers travel log. Also, Abstraction was done since Commuter class and Vehicles class are superclass and that should not be instantiated. The encapsulation are also implement here in the code since there are attributes that should be set to private so getters and setters are used to be able to access those attributes. Lastly, the inheritance, you will see that there are superclasses and subclasses and all subclasses of a superclass inherits the attributes, methods that is initialized/declared in the superclass.

## Challenges when developing the exercise
At first, it is difficult to grasp on how things should work in the program but with the use of the prepared main.dart, I was able to accomplish the given specifications one by one. 
