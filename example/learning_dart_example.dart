import 'dart:core';

class Band{
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
bool checkBandsName({Band bandF(), bandName:String}) => bandF().name == bandName;