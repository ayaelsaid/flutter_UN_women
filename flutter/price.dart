import 'class_car.dart';

class Price extends Car {

  String price;

Price(String color,
      {String? manufactureYear,
      String? motorSpeed,
      required this.price})
      : super(color, manufactureYear: manufactureYear, motorSpeed: motorSpeed) {
        }
  String getPrice() => price;

  void carPrice() {
    print("The price of car is: ${getPrice()}");
    super.showCarInfo();
  }
}
