class Car{
  late String brand;
  late String model;
  late int year;
  late double milesDriven;

  static int numberOfCars=0;

  Car({required this.brand, required this.model,required this.year}){
       numberOfCars++;
  }

  drive(double miles){
    milesDriven=miles;
  }

  double getMilesDriven(){
    return milesDriven;
  }

  String getBrand(){
    return brand;
  }

  String getModel(){
    return model;
  }

  int getYear(){
    return year;
  }

  String getAge(){

    DateTime nowdate=DateTime.now();
    int currentYear=nowdate.year;
    int age=currentYear-year;

    return age.toString();
  }

}

void main(){

  Car TOYOTA=Car( brand: 'TOYOTA',model: 'Corolla',year:  1967);
  TOYOTA.drive(1200.00);
  print('Car Brand Name:${TOYOTA.getBrand()}\nCar Model Name:${TOYOTA.getModel()}\nCar Year:${TOYOTA.getYear()}\nCar Miles Driven:${TOYOTA.getMilesDriven()}\nCar Age:${TOYOTA.getAge()}');

  print('---------------------------------------------------\n');

  Car BMW=Car( brand: 'BMW', model: 'Sedan',year: 2004);
  BMW.drive(1500.00);
  print('Car Brand Name :${BMW.getBrand()}\nCar Model Name : ${BMW.getModel()}\nCar Year :${BMW.getYear()}\nCar Miles Driven:${BMW.getMilesDriven()}\nCar Age       :${BMW.getAge()}');

  print('---------------------------------------------------\n');

  Car ford=Car(brand: 'Ford',model: 'Cabriolet',year: 1968);
  ford.drive(1800.00);

  print('Car Brand Name :${ford.getBrand()}\nCar Model Name : ${ford.getModel()}\nCar Year:${ford.getYear()}\nCar Miles Driven:${ford.getMilesDriven()}\nCar Age :${ford.getAge()}');

  print('\n ** Number of Car Created:${Car.numberOfCars}');

  print('Gthub ok');
}
