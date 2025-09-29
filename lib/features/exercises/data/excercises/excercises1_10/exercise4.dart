import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise4 = ExerciseEntity(
  title: "# Ejercicio 4 - Números Primos",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Escribe un programa que se encargue de comprobar si un número es o no primo.**

* *Un número primo es un número natural mayor que 1 que tiene únicamente dos divisores positivos distintos:*
  * ***El mismo y el 1.***
* Hecho esto, imprime los números primos entre 1 y 100.
""";

String _tip = """
* Un número primo es un número mayor que 1.
* Puedes usar un bucle for para iterar desde 2 hasta la raíz cuadrada del número que quieres comprobar.
* Puedes usar el operador módulo (%) para comprobar si un número es divisible por otro.
""";

String _solution = """
```py
def es_primo(num):
  if num < 2:
    return False
  for i in range(2, int(num**0.5) + 1):
    if num % i == 0:
      return False
  return True
```
""";