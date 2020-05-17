void main() {
  handleMethod((t) {
    print("value received $t");
    return t;
  }, "hello");


  handleMethod((t)  {
    print("value received $t");
    return t;
  }
  , 1);
}

/**
 * This is a generic method, where func is a parameter of type function
 * which is suppose to accept t of type T, and return another of the same type.
 * Second parameter is also named t of type T.. so inside func gets invoked and t is passed
 */
void handleMethod<T>(T Function(T t) func, T t) {
  func(t);
}
