import 'car_option.dart';
import 'class_car.dart';
import 'price.dart';

void main() {
  var myCar = Car("red", manufactureYear: "2020", motorSpeed: "40 k/h");
  myCar.showCarInfo();

  var option = Option("Toyota Camry", "30 mpg", "ABS, Airbags");
  option.showCarInfo(); 

  var myCarPrice = Price("250000");
  myCarPrice.carPrice(); 
}
