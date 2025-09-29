import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise36 = ExerciseEntity(
  title: "# Ejercicio 36 - Batalla Pokémon",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa que calcule el daño de un ataque durante una batalla Pokémon.**

* La fórmula será la siguiente: `daño = 50 * (ataque / defensa) * efectividad`
* Efectividad: x2 (súper efectivo), x1 (neutral), x0.5 (no es muy efectivo)
* Sólo hay 4 tipos de Pokémon: Agua, Fuego, Planta y Eléctrico (buscar su efectividad)
* El programa recibe los siguientes parámetros:
  * Tipo del Pokémon atacante.
  * Tipo del Pokémon defensor.
  * Ataque: Entre 1 y 100.
  * Defensa: Entre 1 y 100.
""";

String _tip = """
* Usa estructuras de control para determinar la efectividad del ataque según los tipos de Pokémon.
* Asegúrate de validar que los valores de ataque y defensa estén dentro del rango permitido.
* Utiliza la fórmula proporcionada para calcular el daño final.
""";

String _solution = """
```py
```
""";