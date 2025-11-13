Question 4

abstract class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void start();
  void stop();

  void displayInfo() {
    print("Vehicle Info: $year $brand $model");
  }

  int calculateAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the car engine...");
  }

  @override
  void stop() {
    print("Stopping the car engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model ($numberOfDoors doors)");
  }
}

class Motorcycle extends Vehicle {
  bool hasWindshield;

  Motorcycle(String brand, String model, int year, this.hasWindshield)
      : super(brand, model, year);

  @override
  void start() {
    print("Starting the motorcycle engine...");
  }

  @override
  void stop() {
    print("Stopping the motorcycle engine...");
  }

  @override
  void displayInfo() {
    print("Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)");
  }
}

void main() {
  List<Vehicle> vehicles = [
    Car("Toyota", "Camry", 2020, 4),
    Motorcycle("Honda", "CBR", 2021, true)
  ];

  for (var v in vehicles) {
    v.displayInfo();
    v.start();
    v.stop();
    print("");
  }

  Car car = vehicles[0] as Car;
  Motorcycle bike = vehicles[1] as Motorcycle;

  print("Car age: ${car.calculateAge()} years");
  print("Motorcycle age: ${bike.calculateAge()} years");
}
