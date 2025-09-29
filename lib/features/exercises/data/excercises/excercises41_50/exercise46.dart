import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise46 = ExerciseEntity(
  title: "# Ejercicio 46 - Contenedor de agua",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Dado un array de números enteros positivos, donde cada uno representa unidades de bloques apilados, debemos calcular cuantas unidades de agua quedarán atrapadas entre ellos.**

* Ejemplo: Dado el array [4, 0, 3, 6, 1, 3].
       ⏹
       ⏹
  ⏹💧💧⏹
  ⏹💧⏹⏹💧⏹
  ⏹💧⏹⏹💧⏹
  ⏹💧⏹⏹⏹⏹

* Representando bloque con ⏹︎ y agua con 💧, quedarán atrapadas 7 unidades  de agua. Suponemos que existe un suelo impermeable en la parte inferior que retiene el agua.
""";

String _tip = """
* Puedes recorrer el array y para cada posición, buscar el bloque más alto a su izquierda y a su derecha.
* La cantidad de agua que puede quedar atrapada en esa posición será el mínimo entre la altura del bloque más alto a su izquierda y a su derecha, menos la altura del bloque en esa posición.
* Asegúrate de manejar los casos en los que no hay bloques a la izquierda o a la derecha.
""";

String _solution = """
```py
```
""";