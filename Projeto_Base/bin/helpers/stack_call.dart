void stackStart() {
  print("Started Main");
  funcitionOne();
  print("Finished Main");
}

void funcitionOne() {
  print("Started F01");
  functionTwo();
  print("Finished F02");
}

void functionTwo() {
  print("Starde F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    try {
      double amount = double.parse("Not a number");
    } catch (e, s) {
      print(e);
      print(s);
    } finally {
      print("Chegou no Finally");
    }
  }

  print("Finished F02");
}
