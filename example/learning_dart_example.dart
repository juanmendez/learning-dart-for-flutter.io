import "dart:io";

class Band {
  String name;
  String album;
  int year;

  /**
   * Kotlin way of constructors
   * class Band(val name: String, val album: String, val year: Int)
   * or constructor(val name: String, val album: String, val year: Int)
   */
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
main() {
  //async... output is of type Future<List<String>>
  var output = new File("./raw/RockBands.csv").readAsLines();

  /**
   * Kotlin way of using a lambda
   * { var1, var2 -> }
   *
   * Dart way of using a lambda
   * (var1, var2) {}
   */
  output.then((List<String> lines) {
    var bands = lines.skip(1).map((String line) {
      var columns = line.split(",");
      return new Band(
          name: columns[0], album: columns[1], year: int.parse(columns[2]));
    }).toList();

    print(bands);
  });
}
