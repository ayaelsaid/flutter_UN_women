import 'class_car.dart';

class Option extends Car{
  String model;
  String fuelEfficiency;
  String safetyFeatures;

  Option(this.model, this.fuelEfficiency, this.safetyFeatures)
      : super("");

  void showCarInfo() {
    super.showCarInfo();
    print("The model of car is: $model");
    print("The fuel efficiency is: $fuelEfficiency");
    print("The safety features are: $safetyFeatures");
  }
}
