/*
Dada una lista de enteros "nums" y un entero "target", retorna los índices de los dos números
tales que si los sumas entre sí, dan como resultado "target"
Es decir: nums[x]+ nums[y] = target
- No se permite utilizar el mismo índice más de una vez

Haré uso de un mapa, el cual será un auxiliar y contendrá los mismos valores que el arreglo.
Las llaves serán los índices  y sus valores correspondientes serán los mismos que contiene el arreglo

Si tenemos un arreglo A=[1,2,3];
Entonces nuestro mapa será M = {0:1, 1:2, 2:3}
Nótese que cada llave corresponde a la posición en el arreglo original
  */

void main() {
  //entradas de prueba
  print(twoSum([-6, 5, 3], -3)); // Output: [0,2]
  print(twoSum([-6, 7, 5, 5, 3], 10)); // Output: [2,3]
  print(twoSum([-6, 7, 7, 7, 7, 5, 5, 3], 1)); // Output: [0,1]
  print(twoSum([15, 15, 15, 15, 15, 1, 5, 3], 14)); // Output: null
}

List<int>? twoSum(List<int> nums, int target) {
  //creación de arreglo vacío, aquí se almacenarán los índices a retornar
  List<int> result = [];
  /*Creación de un mapa, el cual será de auxiliar para almacenar indices y valores del arreglo nums. 
    Siendo los índices del arreglo las llaves en el mapa*/
  Map<int, int> myMap = {};
  //Creación e inicialización de variables auxiliares
  int x = 0, key = 0;

//ciclo for que recorre las posiciones del arreglo "nums"
  for (int i = 0; i < nums.length; i++) {
    /*
    1. Sabemos que nums[i] + x = target, siendo x un número desconocido que se encuentra dentro del arreglo "nums"
       Entonces, x = target-nums[i]
     */
    x = target - (nums[i]);
    /* 2. Si x se encuentra dentro de los valores del mapa, entonces el programa termina y se retorna "i" y la 
       llave que corresponde al valor"x" en el mapa */
    if (myMap.containsValue(x)) {
      key = (myMap.keys.firstWhere((k) =>
          myMap[k] == x)); //almacena la llave que corresponde al valor "x"
      result = [key, i];
      return result;
    }
    //si el valor x no se encuentra dentro del mapa, añade la posición del arreglo y su valor al mapa
    myMap[i] = nums[i];
  }
  return null; //si no existen dichos valores, entonces retorna null
}
