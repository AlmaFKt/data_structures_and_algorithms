//main use to run code in dart
import 'dart:ffi';

void main() {
/*
This is a comment
*/

  print("Hola Dart!"); //with print();  we can print in console

  var myString =
      "Hello, Dart!"; //This is an example of a String-type variable, but without specifying the type of data

  myString =
      "Hola!"; //in this line, we change the value of the String-type variable

  //helloDart = 6;  This is an error, we cannot change the original variable-type

  print(myString); //we print the variable helloDart

  String myString2 =
      "Hello, Dart 2"; //this an other example of a String-type variable, but  specifying the type pf data
  print(myString2);

  var myInt =
      7; //This is an example of a Int-type variable, but without specifying the type of data

  //myInt = ""; Error

  myInt = myInt + 4;

  print(myInt);
  print(myInt - 1);

  //myInt = 6.5; Error

  int myInt2 =
      5; //this an other example of a Int-type variable, but specifying the type pf data
  print(myInt2);

  var myDouble =
      6.5; //This is an example of a Double-type variable, but without specifying the type of data
  print(myDouble);

  myDouble = 6; //This is not a error, 'cause 6n is 6.0
  print(myDouble);

  double myDouble2 =
      123.56; //this an other example of a Double-type variable, but specifying the type pf data
  print(myDouble2);

  var myBool =
      false; //This is an example of a Bool-type variable, but without specifying the type of data
  myBool = true; //in this line, we change the value of the Bool-type variable
  print(myBool);

  //Constants
  final myFinal = "My property final";
  print(myFinal);
  //myFinal = "My new property final"; ERROR

  final myFinalInt = myInt;
  print(myFinalInt);

  const myConst = "My property constant";
  print(myConst);
  //myConst = "My new property constant"; ERROR
  //const myConstInt = myInt; Error

  //Estructuras de control
  if (myInt == 10 && myString == "Hola") {
    print("The value is 10");
  } else if (myInt == 11 || myString == "Hola") {
    print("The value is 11");
  } else {
    print("The value is not 10");
  }

  myFunction();
  var myReturn = myFunctionWithReturn();
  print(myReturn);
  print(myFunctionWithReturn()); //we can also print the function with this mode

//COLLECTION or LIST
  var myList = [
    "Yamil",
    "Barbosa",
    "@Lambis",
    "Yamil"
  ]; //we can use the list to put a lot of Strings
  print(myList);
  print(myList[0]); //here, we print the position 0 of the list

  var mySet = {
    "Yamil",
    "Barbosa",
    "@Lambis",
    "Yamil"
  }; //Set is like a List, but doesn't allow data to be repeated
  print(mySet);

  var myMap = {"Yamil": 19, "Aldo": 20, "Alma": 19};
  print(myMap);
  print(myMap["Yamil"]);

  var myMap2 = Map<String, int>();
  myMap2["ALDO"] = 20;
  myMap2["ALMA"] = 19;

  for (final value in myList) {
    print(value);
  }

  var myCounter = 0;

  while (myCounter <= myInt) {
    print(myCounter);
    myCounter++;
  }
  var myClass = MyClass("Yamil", 19);
  print(myClass.name);
  print(myClass.age);

  String? myOptionalString; //this data-type is gonna be null
  print(myOptionalString);
  myOptionalString = "My value is not null"; //now it doesn't null
  print(myOptionalString);
  myOptionalString = null;
  print(myOptionalString);

  print(MyEnum.Aldo);
}

//Functions

void myFunction() {
  //This is simple function
  print("This is a Function");
}

String myFunctionWithReturn() {
  //This Function needs a return
  return "This is a function with return";
}

class MyClass {
  String name;
  int age;

  MyClass(this.name, this.age) {}
}

enum MyEnum { Aldo, Alma, Yamil, Cesar, Aurelio }
