import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise13 = ExerciseEntity(
  title: "# Ejercicio 13 - Palíndromo",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Escribe una función que reciba un texto y retorne verdadero o falso (Boolean) según sean o no palíndromos.**

* *Un Palíndromo es una palabra o expresión que es igual si se lee de izquierda a derecha que de derecha a izquierda.*
  * NO se tienen en cuenta los espacios, signos de puntuación y tildes.
  * Ejemplo: Ana lleva al oso la avellana.
""";

String _tip = """
* Puedes usar la función replace para eliminar los espacios y signos de puntuación.
* Puedes usar la función lower para convertir una cadena de texto a minúsculas.
* Puedes usar la función reversed para invertir una cadena de texto.
* Puedes comparar la cadena original con la cadena invertida para determinar si es un palíndromo.
""";

String _solution = """
```py
```
""";
