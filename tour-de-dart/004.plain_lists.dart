main() {
  // declaration is very similar to Javascript or Actionscript
  var mutableList = [1, 2, 3, 4];
  mutableList.add(5);

  var immutableList = const [1, 2, 3, 4, 5];
  // not allowed immutableList.add(5);

  // spread operator is a nice way to include another list, inline
  var myOtherList = [...mutableList, 0, 1, 2, 3];
  print(myOtherList); // [1, 2, 3, 4, 5, 0, 1, 2, 3]

  // use ...?mutableList to escape nullable list
  var list;
  var list2 = [0, ...mutableList, ...?list];
  print(list2);
}
