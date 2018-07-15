// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
  String name;
  int age;
  Why why;

  Awesome._internal(this.name);
  Awesome.coolBeans(this.name, this.age);

  static final Map<String, Awesome> _cache = <String, Awesome>{};

  //this is the default constructor
  // if this were not available, then define a default constructor
  // as Awesome.coolBeans forces for one
  factory Awesome(String name) {
    if( _cache.containsKey(name)){
        return _cache[name];
    } else {
        Awesome awesome = Awesome._internal(name);
        _cache[name] = awesome;
        return awesome;
    }
  }
}

class Why {
  String reason;
  int stars;
}
