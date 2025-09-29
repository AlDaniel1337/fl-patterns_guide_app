import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise15 = ExerciseEntity(
  title: "# Ejercicio 15 - Número de Armstrong",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);


String _exercise = """
**Escribe una función que calcule si un número dado es un número de Armstrong (o también llamado narcisista).**

* Número entero positivo igual a la suma de sus propios dígitos, cada uno elevado a la potencia del número total de dígitos que tiene el número. 
* Por ejemplo, 153 es un número de Armstrong porque tiene 3 dígitos y la suma de sus dígitos elevados al cubo es:
  * 153: 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153. 
  * 370: 3^3 + 7^3 + 0^3 = 27 + 343 + 0 = 370. 
  * 371: 3^3 + 7^3 + 1^3 = 27 + 343 + 1 = 371. 
  * 1634: 1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634. 
""";

String _tip = """
* Puedes convertir el número a una cadena de texto para poder iterar sobre cada dígito.
* Puedes usar la función len para obtener el número de dígitos.
* Puedes usar un bucle for para recorrer cada dígito, convertirlo a entero y elevarlo a la potencia del número de dígitos.
* Puedes usar una variable para ir acumulando la suma de los dígitos elevados a la potencia.
* Al final, compara la suma con el número original para determinar si es un número de Armstrong.
""";

String _solution = """
'''py
def isArmstrong( num: int ):
  lenNum = len( str( num ) )
  sum = 0
  
  for i in str( num ):
      sum = sum + ( int( i ) ** lenNum )
  
  if(sum == num): print("Armstrong Number")
  else: print("Not an Armstrong Number")
'''
""";