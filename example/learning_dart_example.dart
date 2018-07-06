import 'dart:core';

class Band {
  String name;
  String album;
  int year;

  Band({this.name="", this.album="", this.year=0});

  @override
  String toString() {
    return 'Band{name: $name, album: $album, year: $year}';
  }
}

Band greatestBand() => Band(name: "Led Zeppelin", album: "Led Zeppelin I", year: 1968);

//pay attention how to pass a lambda,, in Kotlin we do bandF:()->String
bool checkBandsName({Band bandF(), bandName: String}) =>
    bandF().name == bandName;

int sum({int num1, int num2 = 0}) => num1 + num2;

int sumSeveral(int num1, [int num2 = 0, int num3]) {
  int sum = num1 + num2;

  if (num3 != null) {
    sum += num3;
  }

  return sum;
}

Band makeBandFromParams(String name, [String album, int year = 2018]){
  Band band = new Band(name: name);

  band.album = album ?? name; //Kotlin uses Elvis ?:, here is ??
  band.year = year;
  return band;
}
