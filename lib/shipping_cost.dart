class ShippingCost {
  /*
  Esta clase realiza una operación sencilla de multiplicación entre dos atributos "weight"*"zoneCost",
  en donde los valores de "zoneCost" se encuentran en una estructura de datos llamada "Map", uno puede acceder a los diferentes valores
  mediante el uso de una llave, por ejemplo, si quisieramos almacenar el valor que le corresponde a la llave "A"
  en una variable, hariamos lo siguiente: 
  var x = mapName["A"] ?? 0;  
  "??0" significa que si la llave no existe dentro del mapa, entonces se almacenará
  el valor 0 en la variable "x"
  

  esta clase cuenta con metodos getters & getters para dos variables diferentes
  cuenta con un método para hacer los cálculos necesarios
  
  El uso de este programa podría ser de utilidad para la venta de artículos que se venden en diferentes zonas
  por kilo, en donde el precio por kilo varía dependiendo de la zona.
  Dado un conjunto de pares ordenados m = {("A", 5), ("B", 10), ("C", 15)}, en donde:
  x = llave de tipo String(nombre de la zona)
  y = valores asignados a cada llave de tipo double (costo por kilo/zona) 
  A medida que los valores de entrada aumentan (kilogramos ingresados), el costo final aumentará

  La secuencia del programa es la siguiente:
      inicio
        1. Crea objeto de tipo ShippingCost para poder acceder sus métodos (en el metodo main)
        2. Asigna un valor para cada variable "zone" y "weight", (haciendo úso de los metodos "set" correspondientes)
        3. Mediante el método computeShippingCost(), realiza la operación correspondiente (haciendo uso de los métodos "get") y retorna el resultado

   */

  String zone = "";
  double weight = 0;

  final Map<String, double> mapOfCosts = {"A": 5, "B": 10, "C": 15};
// getter and setter for zone
  String get getZone {
    return zone;
  }

  set setZone(String zone) {
    this.zone = zone;
  }

// getter and setter for weight
  double get getWeight {
    return weight;
  }

  set setWeight(double weight) {
    this.weight = weight;
  }

//method para que realiza la operación
  double computeShippingCost() {
    //inicializacion de variables
    double zoneCost = 0, finalCost = 0, weightInput = getWeight;

    //búsqueda del valor correspondiente a la llave que el usuario ingrese haciendo uso del método "getZone"
    zoneCost =
        mapOfCosts[getZone] ?? 0; //if the key is not found, it will return 0

    finalCost = weightInput * zoneCost; //cálculo

    return finalCost;
  }

  /*
  //LAS SIGUIENTES SENTENCIAS SE COLOCAN EN EL METODO MAIN
  ShippingCost ob1 = ShippingCost();
  String zoneInput = "";
  double weightInput = 0, finalCost = 0;
  //ingreso de la zona
  print("Elija una zona\nA:\$5 \nB:\$10 \nC:\$15 ");
  zoneInput = stdin.readLineSync()!;
  ob1.setZone = zoneInput;

  //ingreso del weight
  print("Ingrese kilogramos");
  weightInput = double.parse(stdin.readLineSync()!);
  ob1.setWeight = weightInput;

  //show output
  finalCost = ob1.computeShippingCost();
  print("Costo final: \$$finalCost");
  */
}
