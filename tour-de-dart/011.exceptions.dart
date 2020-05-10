void main() {
  // based on the definition an Error is used for program errors
  // exceptions are used for unexpected runtime errors
  try {
    intentionalThrow();
  } on FormatException {
    // never caught
    print("formatted exception");
  } catch (e) {
    print(e);
  }

  try {
    formattedThrow();
  } on FormatException {
    print("formatted exception");
  } catch (e) {
    // never caught
    print(e);
  }

  try {
    zeroException();
  } on FormatException {
    print("formatted exception");
  } on IntegerDivisionByZeroException {
    print("zero exception");
  } catch (e) {
    // never caught
    print(e);
  }

  // here onException doesn't catch error thrown but last block
  try {
    errorThrown();
  } on Exception catch (e) {
    print(e);
  } catch(e) {
    print(e);
  } finally {
    print("as usual do any other final work");
  }
}

void intentionalThrow() => throw "intentional throw";

void formattedThrow() => throw FormatException("Format exception");

void zeroException() => throw IntegerDivisionByZeroException();

void errorThrown() => throw Error();
