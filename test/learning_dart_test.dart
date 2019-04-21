import 'package:test/test.dart';
import 'package:quiver/core.dart';

void main() {
  test('First Test', () {
    List<int> items = [0, 1, null, 3, 4, 5];

    items.forEach((i){
        print(i ?? "-1");
    });


    items.forEach((i){
      printInteger(i);
    });

    var anyNull = items.any((i){
      // return is a must, not like Kotlin which does automatically
      return i == null;
    });

    assert(anyNull, "one value is null");
  });
}

void printInteger(int i) {
  var option = Optional.fromNullable(i);

  if(option.isNotPresent) {
    print("not availabler");
  } else {
    print("available ${option.value}");
  }
}
