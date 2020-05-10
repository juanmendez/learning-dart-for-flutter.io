void main() {
  final square = Square(3);
  assert(square.area == 9);
  // square.area = 4;  // immediate shows as error

  square.color = "blue";
  // print(square.color) immediate error
}

class Square {
  int _side = 0;
  int _area = 0;
  String _color = "";

  Square(this._side) {
      _area = _side * _side;
  }

  num get area => _area;

  set color(String colorName) {
    _color = colorName;
  }
}

