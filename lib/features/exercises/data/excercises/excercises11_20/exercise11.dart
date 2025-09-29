import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise11 = ExerciseEntity(
  title: "# Ejercicio 11 - Paréntesis equilibrados",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa que comprueba si los paréntesis, llaves y corchetes de una expresión están equilibrados.**

* Equilibrado significa que estos delimitadores se abren y cieran en orden y de forma correcta.
* Paréntesis, llaves y corchetes son igual de prioritarios.
  * *No hay uno más importante que otro.*
* Expresión balanceada: `{ [ a * ( c + d ) ] - 5 }`
* Expresión no balanceada: `{ a * ( c + d ) ] - 5 }`
""";

String _tip = """
* Puedes usar una pila (stack) para ir almacenando los delimitadores de apertura.
* Puedes recorrer la expresión carácter a carácter.
* Cuando encuentres un delimitador de apertura lo añades a la pila.
* Cuando encuentres un delimitador de cierre compruebas si la pila está vacía (si lo está no está equilibrado) y si el tope de la pila es el delimitador de apertura correspondiente (si no lo es no está equilibrado).
* Al final, si la pila está vacía la expresión está equilibrada.
""";

String _solution = """
```py
```
""";