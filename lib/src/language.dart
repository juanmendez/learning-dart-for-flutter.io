class Language {
  String name = "";
  int age = 0;

  Language({this.name, this.age}){
    if(name.isEmpty) {
      throw Exception("Where is the meat?");
    }
  }
}