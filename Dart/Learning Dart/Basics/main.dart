// define new classes
class Bicycle {
  // and their variables
  int gear;
  int speed;
  int cadence;
  //constructor
  Bicycle(this.gear, this.speed, this.cadence);
  /* it is equal to:
  Bicycle(gear, speed, cadence):
    this.gear = gear,
    this.speed = speed,
    this.cadence = cadence;
  */
  // rewrite toString
  @override
  String toString() => "Bicycle: $speed mph";
}

//function with one-liner
//using fat arrow notation
//and ${expr}
String Scream(int length) => "A${'a' * length}h!";
//main
main() {
  final values = [1, 3, 5, 10, 50];
  /*  IMPERATIVE STYLE
  for (var length in values) {
    print(Scream(length));
  }
  */
  // FUNCTIONAL STYLE
  values.map(Scream).forEach(print);
  // for every value in values: print(Scream(value))
  // can also use filtering with:
  // values.skip(1)
  // values.take(3)
  // take(3) takes the next 3 values, skipped ones not included
  var bike = new Bicycle(2, 0, 1);
  print(bike); // does not print the variables if the method toString is not overwritten
}
