import "dart:io";

class Band{
  String name;
  String album;
  int year;

  Band(this.name, this.album, this.year);

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

  output.then((List<String> lines){

      var bands = lines
                  .skip(1)
                  .map((String line){
                      var columns = line.split(",");
                      return new Band( columns[0], columns[1], int.parse(columns[2]));
                  })
                  .toList();
      print(bands);
  });
}