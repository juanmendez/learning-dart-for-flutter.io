import 'package:test/test.dart';
import '../example/learning_dart_example.dart';
import 'package:rxdart/rxdart.dart';

void main() {
  test("load bands", () {
    Observable<List<Band>>.fromFuture(getBands()).listen((List<Band> bands){
      var artists = Map<String,List<String>>();

      bands.forEach((band){
        if(artists[band.name] == null){
          artists[band.name] = List<String>();
        }
        artists[band.name].add(band.album);
      });

      expect(artists["Bon Jovi"].length, equals(2));
    }, onError: (Object error){
      print("$error");
    }, onDone: (){
      print("completed");
    });
  });

  test("get Bon Jovi albums", (){
    Observable<List<Band>>.fromFuture(getBands(true)).map((bands){
      bands.where((band)=> band.name == "Bon Jovi");
    }).listen((List<Band> bands){
      bands.forEach((b) => print("$b"));

      assert(bands.every((band){
        band.name == "Bon Jovi";
      }));
    }, onError: (error){
      print("error $error");
    }, onDone: ()=> print("done"));
  });
}
