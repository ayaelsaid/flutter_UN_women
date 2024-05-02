import 'class_car.dart';

class Price extends Car {

  String _price;

  Price(this._price) : super("");

  // Method to get the price
  String getPrice() => _price;

  // Method to print the price and car info
  void carPrice() {
    print("The price of car is: ${getPrice()}");
    super.showCarInfo();
  }
}