import 'dart:async';
import "dart:io";

class Band {
  String name;
  String album;
  int year;

  Band({this.name = "", this.album = "", this.year = 0});

  @override
  String toString() {
    return 'Band{name: $name, album: $album, year: $year}';
  }
}

/**
 * this short demo exposes the same functionality I once wrote in Kotlin.
 * There are several striking similarities. Unfortunately, Dart's lambdas don't simplify themselves as much
 * as the ones in Kotlin. The story of the Band class is quite the same.
 */
Future<List<Band>> getBands([bool expectException = false]) async {
  //async... output is of type Future<List<String>>

  var output = new File("./raw/RockBands.csv").readAsLines();

  return output.then((List<String> lines) {
    if (expectException) {
      throw new Exception("you got an exception");
    }

    return lines.skip(1).map((line) {
      var columns = line.split(",");
      return new Band(
          name: columns[0], album: columns[1], year: int.parse(columns[2]));
    }).toList();
  });
}

Future<List<Band>> getAsyncBands([bool expectException = false]) async {
  //so await is similar to future.then()
  //with the difference that having several awaits would execute in a linear manner
  //where as using future.then() multiple times ocurred independently
  var lines = await File("./raw/RockBands.csv").readAsLines();

  return lines.skip(1).map((line) {
    var columns = line.split(",");
    return new Band(
        name: columns[0], album: columns[1], year: int.parse(columns[2]));
  }).toList();
}

Stream<Band> getStreamedBands() async* {
  var lines = await File("./raw/RockBands.csv").readAsLines();
  var bands = lines.skip(1).map((line) {
    var columns = line.split(",");
    return Band(name: columns[0], album: columns[1], year: int.parse(columns[2]));
  }).toList();

  for(var band in bands) {
    print("band $band");
    yield band;
  }
}

void main() {

}
