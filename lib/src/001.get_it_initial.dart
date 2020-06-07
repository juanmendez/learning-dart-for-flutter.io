bool lazyInitialization = false;
class AppModel {
    String name = "appmodel";
    String framework = "";
    String language = "";
    DateTime published = DateTime.now();
}

class LazyAppModel extends AppModel {
  LazyAppModel() {
    lazyInitialization = true;
  }
}
