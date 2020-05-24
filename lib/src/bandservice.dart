import 'dart:io';
import 'band.dart';

class BandService {
  String welcome() => "Welcome to Rock Service";

  String tellUsWHoYouAre(String you) => "Welcome $you";

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
}