class Grinder{
  Grinder() {
    print("$this");
  }
}

class CoffeeBean{
  Grinder grinder;
  CoffeeBean(this.grinder) {
    print("$this");
  }
}

class Sugar{
  Sugar() {
    print("$this");
  }
}

class Water {
  Water() {
    print("$this");
  }
}

class Coffee {
  CoffeeBean coffeeBean;
  Sugar sugar;
  Water water;

  Coffee(this.coffeeBean, this.sugar, this.water){
    print("$this $coffeeBean $sugar $water");
  }
}