import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise26 = ExerciseEntity(
  title: "# Ejercicio 26 - Piedra, Papel o Tijera",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa que calcule quien gana más partidas al piedra, papel, tijera.**

* El resultado puede ser: "Player 1", "Player 2", "Tie" (empate)
* La función recibe un listado que contiene pares, representando cada jugada.
* El par puede contener combinaciones de "R" (piedra), "P" (papel) o "S" (tijera).
* Ejemplo. Entrada: [("R","S"), ("S","R"), ("P","S")]. Resultado: "Player 2".
""";

String _tip = """
* Recorre la lista de jugadas y compara cada par.
* Lleva un contador de victorias para cada jugador.
* Compara los contadores al final para determinar el ganador o si hay empate.
""";

String _solution = """
```py
```
""";