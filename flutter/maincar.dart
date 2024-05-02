import 'car_option.dart';
import 'class_car.dart';
import 'price.dart';

void main() {
  var myCar = Option('Blue', model: 'SUV', manufactureYear: '2019', motorSpeed: '180');
  var myOption = Option('Black',
      manufactureYear: '2019',
      motorSpeed: '180',
      model: 'SUV',
      fuelEfficiency: '20 mpg',
      safetyFeatures: 'Airbags');

  print('myCar Information:');
  myCar.showCarInfo();
  print('my car option');
  myOption.showCarInfo();
  var myNewOption = Option('Black', model: 'SUV');
  print("=======================");
  myNewOption.showCarInfo();

  var myCarPrice =
      Price('Red', manufactureYear: '2021', motorSpeed: '220', price: '50000');
  myCarPrice.carPrice();
  print("==========================");
  var myNewCarPrice = Price('Red', price: '50000');
  myNewCarPrice.carPrice();

  var myNewCar = Car("red", manufactureYear: "2020", motorSpeed: "40 k/h");
  print("=====================");
  myNewCar.showCarInfo();
  var myOwn = Car("red");
  print("=======================================");
  myOwn.showMotorSpeed();
  myOwn.showCarInfo();
}
