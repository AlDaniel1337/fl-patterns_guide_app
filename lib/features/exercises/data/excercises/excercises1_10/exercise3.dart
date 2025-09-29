import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise3 = ExerciseEntity(
  title: "# Ejercicio 3 - Fibonacci",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Escribe un programa que imprima los 50 primeros números de la sucesión de Fibonacci empezando en 0.**

* La serie Fibonacci se compone por una sucesión de números en la que el siguiente siempre es la suma de los dos anteriores.
* 0, 1, 1, 2, 3, 5, 8, 13...
  * 0 + 1 = 1,
  * 1 + 1 = 2,
  * 1 + 2 = 3,
  * 2 + 3 = 5,
  * 3 + 5 = 8,
  * 5 + 8 = 13,
""";

String _tip = """
* Puedes usar un bucle for para iterar 50 veces.
* Puedes usar dos variables para almacenar los dos últimos números de la serie.
* En cada iteración calcula el siguiente número de la serie y actualiza las dos variables.
""";

String _solution = """
```py
val = 1
aux = 0
for i in range(0, 50):
  fibo = aux + val
  aux = val
  val = fibo
  
  print(fibo)
```
""";