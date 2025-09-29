import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise38 = ExerciseEntity(
  title: "# Ejercicio 38 - La cronología de Zelda",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**¡Han anunciado un nuevo "The Legend of Zelda"!**

* Se llamará "Tears of the Kingdom" y se lanzará el 12 de mayo de 2023.
* Pero, ¿recuerdas cuánto tiempo ha pasado entre los distintos "The Legend of Zelda" de la historia?
* Crea un programa que calcule cuántos años y días hay entre 2 juegos de Zelda que tú selecciones.
* Debes buscar cada uno de los títulos y su día de lanzamiento
  * (si no encuentras el día exacto puedes usar el mes, o incluso inventártelo)
""";

String _tip = """
* Puedes usar la clase DateTime de Dart para manejar fechas.
* Puedes restar dos objetos DateTime para obtener la diferencia entre ellos.
""";

String _solution = """
```py
```
""";