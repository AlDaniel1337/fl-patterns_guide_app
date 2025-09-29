import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise43 = ExerciseEntity(
  title: "# Ejercicio 43 - Conversión de Temperaturas",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que transforme grados Celsius en Fahrenheit y viceversa.**

* Para que un dato de entrada sea correcto debe poseer un símbolo "°" y su unidad ("C" o "F").
* En caso contrario retornará un error.
""";

String _tip = """
* La fórmula para convertir de Celsius a Fahrenheit es: F = (C * 9/5) + 32.
* La fórmula para convertir de Fahrenheit a Celsius es: C = (F - 32) * 5/9.
* Puedes usar condicionales para verificar la unidad de entrada y aplicar la fórmula correspondiente.
* Asegúrate de manejar casos donde la entrada no tenga el formato esperado y retornar un mensaje de error adecuado.
""";

String _solution = """
```py
```
""";