import 'class_car.dart';

class Option extends Car{
String model;
  String? fuelEfficiency;
  String? safetyFeatures;

  Option(String color,
      {String? manufactureYear,
      String? motorSpeed,
      required this.model,
      this.fuelEfficiency,
      this.safetyFeatures})
      : super(color, manufactureYear: manufactureYear, motorSpeed: motorSpeed);

  @override
  void showCarInfo() {
    super.showCarInfo();
    if (model.isNotEmpty) {
      print("The model of car is: $model");
    }
    if (fuelEfficiency != null) {
      print("The fuel efficiency is: $fuelEfficiency");
    }
    if (safetyFeatures != null) {
      print("The safety features are: $safetyFeatures");
    }
  }
}
