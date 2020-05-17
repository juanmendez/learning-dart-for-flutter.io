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

Future<List<Band>> getBandsWithFuture([bool expectException = false]) async {
  final output = new File("./raw/RockBands.csv").readAsLines();

  return output.then((List<String> lines) {
    if (expectException) {
      throw new Exception("you got an exception");
    }

    return lines.skip(1).map((String line) {
      var columns = line.split(",");

      return Band(
          name: columns[0], album: columns[1], year: int.parse(columns[2]));
    }).toList();
  });
}

Stream<Band> getBandsWithStream() async* {
  final bands = await getBandsWithFuture();

  for (Band band in bands) {
    yield band;
  }
}
