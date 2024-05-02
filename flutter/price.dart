import 'class_car.dart';

class Price extends Car {

  String _price;

  Price(this._price) : super("");

  String getPrice() => _price;

  void carPrice() {
    print("The price of car is: ${getPrice()}");
    super.showCarInfo();
  }
}
