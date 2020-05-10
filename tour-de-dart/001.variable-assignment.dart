main() {
  /*
  assignment of different types is not allowed
  so that means the first type assigned is the inline definition of number
  myNumber is defined as dynamic type
  var myNumber = 42;
  myNumber = "hello";
  */

  // in this case name can accept any type
  dynamic name = "Bop";
  name = 3;
  print("name is now $name");

  // everything in Dart is an object including null
  // non initialized variables start as null
  var myNull = null;
  var thatNull;
  print("muy null $myNull.toString()");

  // they are both equal
  // === operator is not available in Dart
  if(myNull == thatNull) {
    print("both nulls are equal");
  } else {
    print("nullable vars are not equal");
  }


  /**
   * Dart is absent from using keywords such as private, public protected..
   * everything is public except any variable starting with an underscore
   * describes the variable is only visible within its own library
   */
}
