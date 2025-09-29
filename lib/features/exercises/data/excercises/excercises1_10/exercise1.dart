import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise1 = ExerciseEntity(
  title: "# Ejercicio 1 - FizzBuzz",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);


String _exercise = """
**Escribe un programa que muestre por consola los números de 1 a 100 (ambos incluidos y con un salto de línea entrecada impresión), sustituyendo los siguientes:**

* Múltiplos de 3 por la palabra "fizz".
* Múltiplos de 5 por la palabra "buzz".
* Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
""";

String _tip = """
* Puedes usar el operador módulo (%) para comprobar si un número es múltiplo de otro.
* Puedes usar un bucle for para iterar del 1 al 100.
""";

String _solution = """
```py
for i in range(1,101):
  if( i % 3 == 0 and i % 5 == 0): print(i, "fizzbuzz")
  elif( i % 3 == 0): print(i, "fizz")
  elif( i % 5 == 0): print(i, "buzz")
  print(i)
```
""";