class Car {
  String color;
  String? manufactureYear;
  String? motorSpeed;

  Car(this.color, {this.manufactureYear, this.motorSpeed});
  
  void showCarInfo() {
    if (color.isEmpty) {
      print("There is not any information about this car");
      return;
    }

    print("The color of car is: $color");

    if (manufactureYear != null) {
      print("The manufactureYear of car is: $manufactureYear");
    }

    if (motorSpeed != null) {
      print("The motor speed is: $motorSpeed");
    }
  }
  void showMotorSpeed() {
  if (motorSpeed != null) {
    print("The speed of car is: ${motorSpeed}");
  } else {
    print("No speed provided");
  }
}

}
