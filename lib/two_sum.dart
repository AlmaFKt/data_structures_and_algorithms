/*
Este programa necesita dos valores de entrada: (1)Un arreglo de enteros y (2)Un valor entero(target)
El objetivo de este programa es econtrar dos números dentro del arreglo, que al ser sumados, den igual al
valor entero que se ingresó (target)
La condición es que ese par de números no pueden tener el mismo índice.

 Ejemplo 1:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Porque nums[0] + nums[1] == 9, retornamos [0, 1].


NOTA:   
  Time complexity = 0(n^2), ESTO PORQUE USÉ DOS CICLOS FOR ANIDADOS
  EXISTE UNA MANERA MÁS OPTIMA DE REALIZAR ESTE PROGRAMA UTILIZANDO UNICAMENTE UN CICLO FOR Y UTLIZANDO LA
  ESTRUCTURA DE DATOS "MAP" Y ASÍ SE REDUCE TIME COMPLEXITY A 0(n)

  ESTA ES LA PRIMER VERSIÓN Y POSTERIORMENTE SUBIRÉ OTRA VERSIÓN REDUCIENDO TIME COMPLEXITY
 */

void main() {
  // "nums" es un conjunto finito de números para trabajar, uno puede cambiarlos como se desee
  List<int> nums = [-1, 2, 6];
  // "target " es el valor que se desea obtener al hace la suma entre cada valor del conjunto anterior "nums"
  int target = 1;
  // "indexesR" almacena lista de los dos índices con los que se puede obtener el valor "target"
  List<int> indexesR = twoSum(nums, target).$1;
  // "canBeSummed" permite saber si es posible o no obtener el valor "target" dado el conjunto "nums"
  bool canBeSummed = twoSum(nums, target).$2;

  /*si "canBeSummed" es false, significa que el método twoSum retornó una lista vacía y false, esto porque
    no hubo ningún par de elementos con diferente índice que pudieran sumarse entre sí para obtener el valor
    de "target", por lo tanto, se desplegará un mensaje de error*/
  print("Initial array $nums \n Target:$target");
  if (!canBeSummed) {
    print(
        "Ningún para de elementos dentro del conunto permite obtener $target al sumarlos entre sí");
  } else {
    /*Si canBeSummed se evalua como true significa que el método "twoSum" retornó un par de indices,
      los cuales apuntan a los valores correspondientes que al ser sumados entre sí, se obtiene el valor de
      "target"
      Y creamos una nueva lista de elementos, la cual mostrará el par de elementos deseados,
      tomando los índices que el método "twoSum" retornó
     */

    List<int> valuesR = [nums[indexesR[0]], nums[indexesR[1]]];

    print(
        "Valores que pueden ser sumados para obtener $target :  ${valuesR[0]} y ${valuesR[1]} \n Indices de cada valor : [${indexesR[0]}] y [${indexesR[1]}] ");
  }
}

(List<int>, bool) twoSum(List<int> nums, int target) {
  // lista vacía de enteros que contendrá el par de índices que deseamos
  List<int> results = [];
  /* 
  *Utilizamos dos ciclos for anidados ya que necesitamos hacer sumas entre los distintos valores del arreglo
   fijando la primer posición (la cual es 0) y sumandola con los demás elementos.
   
   El primer ciclo inicia desde la posicion 0 y termina en nums.length-1 (penultima posicion), esto es porque deseamos que
   el par de indices que retorne el metodo sean diferentes
   
   El segundo ciclo inicia en la posición 1 y termina en nums.length (ultima posicion)
   
   Este desfase de posiciones permite que el metodo nunca retorne dos pares de indices que sean los mismos
   * */
  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = 1; j < nums.length; j++) {
      if ((nums[i] + nums[j]) == target) {
        results.add(i);
        results.add(j);
        return (results, true);
      }
    }
  }
  return (results, false);
}
