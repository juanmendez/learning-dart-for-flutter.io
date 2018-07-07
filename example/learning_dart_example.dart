class Bicycle {
  int mCadence;
  int mSpeed;
  int mGear;

  Bicycle(this.mCadence, this.mSpeed, this.mGear);

  @override
  String toString() {
    //interpolation works like in Kotlin $variable ${object.variable}
    return 'Bicycle{cadence: $mCadence, speed: $mSpeed, gear: $mGear}';
  }

  //like in Typescript with a fat arrow, not like lambda in Kotlin and Java
  String showSpeed() => "this is our speed $mSpeed";

  void applyBrake(int decrement) {
    mSpeed -= decrement;
  }

  void speedUp(int increment) {
    mSpeed += increment;
  }
}

main() {
  //variable declaration like typescript or kotlin
  var bicycle = new Bicycle(3, 3, 3);
  print(bicycle);
  print(bicycle.showSpeed());
}
