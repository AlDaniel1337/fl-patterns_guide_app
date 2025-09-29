import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise10 = ExerciseEntity(
  title: "# Ejercicio 10 - Código Morse",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa que sea capaz de transformar texto natural a código morse y viceversa.**

* Debe detectar automáticamente de qué tipo se trata y realizar la conversión.
* En morse se soporta raya "—", punto ".", un espacio " " entre letras o símbolos y dos espacios entre palabras "  ".
* El alfabeto morse soportado será


|   |      |   |      |   |       |   |       |
|---|------|---|------|---|-------|---|-------|
| A | .-   | K | -.-  | U | ..-   | 5 | ..... |
| B | -... | L | .-.. | V | ...-  | 6 | -.... |
| C | -.-. | M | --   | W | .--   | 7 | --... |
| D | -..  | N | -.   | X | -..-  | 8 | ---.. |
| E | .    | O | ---  | Y | -.--  | 9 | ----. |
| F | ..-. | P | .--. | Z | --..  | 0 | ----- |
| G | --.  | Q | --.- | 1 | .---- |   |       |
| H | .... | R | .-.  | 2 | ..--- |   |       |
| I | ..   | S | ...  | 3 | ...-- |   |       |
| J | .--- | T | -    | 4 | ....- |   |       |
""";

String _tip = """
* Puedes usar un diccionario (mapa) para almacenar el alfabeto morse.
* Puedes usar la función split para separar las palabras de una cadena de texto.
* Puedes usar la función join para unir las palabras de una lista en una cadena de texto.
* Puedes recorrer la cadena de texto y para cada carácter buscar su equivalente en el diccionario.
""";

String _solution = """
```py
```
""";