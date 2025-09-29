import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise37 = ExerciseEntity(
  title: "# Ejercicio 37 - Batalla en la Tierra Media",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**¡La Tierra Media está en guerra! En ella lucharán razas leales a Sauron contra otras bondadosas que no quieren que el mal reine sobre sus tierras.**

* Cada raza tiene asociado un "valor" entre 1 y 5:
  * Razas bondadosas: Pelosos (1), Sureños buenos (2), Enanos (3), Númenóreanos (4), Elfos (5)
  * Razas malvadas: Sureños malos (2), Orcos (2), Goblins (2), Huargos (3), Trolls (5)

* Crea un programa que calcule el resultado de la batalla entre los 2 tipos de ejércitos:
* El resultado puede ser que gane el bien, el mal, o exista un empate. 
  * Dependiendo de la suma del valor del ejército y el número de integrantes.
* Cada ejército puede estar compuesto por un número de integrantes variable de cada raza.
  * Tienes total libertad para modelar los datos del ejercicio.
    * 1 Peloso pierde contra 1 Orco
    * 2 Pelosos empatan contra 1 Orco
    * 3 Pelosos ganan a 1 Orco
""";

String _tip = """
* Usa estructuras de datos adecuadas para representar las razas y sus valores.
* Utiliza bucles para calcular la fuerza total de cada ejército.
* Compara las fuerzas totales para determinar el resultado de la batalla.
""";

String _solution = """
```py
```
""";