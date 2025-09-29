import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise34 = ExerciseEntity(
  title: "# Ejercicio 34 - Ciclo sexagenario chino",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un función, que dado un año, indique el elemento y animal correspondiente en el ciclo sexagenario del zodíaco chino.**
 
* El ciclo sexagenario se corresponde con la combinación de los elementos madera, fuego, tierra, metal, agua y los animales rata, buey, tigre, conejo, dragón, serpiente, caballo, oveja, mono, gallo, perro, cerdo (en este orden).
* Cada elemento se repite dos años seguidos.
* El último ciclo sexagenario comenzó en 1984 (Madera Rata).
""";

String _tip = """
* Info: https://www.travelchinaguide.com/intro/astrology/60year-cycle.html
* Utiliza el operador módulo (%) para encontrar la posición en el ciclo.
* Resta 1984 al año dado para alinear con el inicio del ciclo.
""";

String _solution = """
```py
```
""";