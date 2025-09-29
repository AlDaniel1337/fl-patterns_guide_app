import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise16 = ExerciseEntity(
  title: "# Ejercicio 16 - Días entre fechas",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que calcule y retorne cuántos días hay entre dos cadenas de texto que representen fechas.**

* Una cadena de texto que representa una fecha tiene el formato "dd/MM/yyyy".
* La función recibirá dos String y retornará un Int.
* La diferencia en días será absoluta (no importa el orden de las fechas).
* Si una de las dos cadenas de texto no representa una fecha correcta se lanzará una excepción.
""";

String _tip = """
* Puedes usar la clase DateTime de Dart para manejar fechas.
* Puedes usar el método difference de DateTime para calcular la diferencia entre dos fechas.
* Puedes usar el método parse de DateTime para convertir una cadena de texto en un objeto DateTime.
* Puedes usar la propiedad inDays de la clase Duration para obtener la diferencia en días.
""";

String _solution = """
```py
```
""";
