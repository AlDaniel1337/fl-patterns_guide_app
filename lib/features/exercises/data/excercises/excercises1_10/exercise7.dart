import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise7 = ExerciseEntity(
  title: "# Ejercicio 7 - Invertir cadena",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa que invierta el orden de una cadena de texto sin usar funciones propias del lenguaje que lo hagan de forma automática.**

* Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
""";

String _tip = """
* Puedes recorrer la cadena de texto desde el final hasta el principio.
* Puedes ir concatenando cada carácter a una nueva cadena de texto.
""";

String _solution = """
```py
def invertString( str ):
  invert = ""
  for char in str:
    invert = char + invert
```
""";