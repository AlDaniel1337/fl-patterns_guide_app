import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise39 = ExerciseEntity(
  title: "# Ejercicio 39 - Binario a decimal",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa se encargue de transformar un número binario a decimal sin utilizar funciones propias del lenguaje que lo hagan directamente.**
""";

String _tip = """
* Recorre el número binario de derecha a izquierda.
* Multiplica cada dígito por 2 elevado a la posición del dígito (empezando en 0).
* Suma todos los resultados para obtener el número decimal.
  * `01 = 1 * (2^0) = 1`
  * `10 = 1 * (2^1) + 0 * (2^0) = 2 + 0 = 2`
  * `11 = 1 * (2^1) + 1 * (2^0) = 2 + 1 = 3`
  * `100 = 1 * (2^2) + 0 * (2^1) + 0 * (2^0) = 4 + 0 + 0 = 4`
""";

String _solution = """
```py
```
""";