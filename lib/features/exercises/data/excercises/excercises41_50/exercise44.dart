import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise44 = ExerciseEntity(
  title: "# Ejercicio 44 - Truco o Trato",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Este es un reto especial por Halloween.**

+ Deberemos crear un programa al que le indiquemos si queremos realizar "Truco o Trato" y un listado (array) de personas con las siguientes propiedades:
  + Nombre de la niña o niño
  + Edad
  + Altura en centímetros
 
* Si las personas han pedido truco, el programa retornará sustos (aleatorios) siguiendo estos criterios:
  * Un susto por cada 2 letras del nombre por persona
  * Dos sustos por cada edad que sea un número par
  * Tres sustos por cada 100 cm de altura entre todas las personas
  * Sustos: 🎃 👻 💀 🕷 🕸 🦇

- Si las personas han pedido trato, el programa retornará dulces (aleatorios) siguiendo estos criterios:
  - Un dulce por cada letra de nombre
  - Un dulce por cada 3 años cumplidos hasta un máximo de 10 años por persona
  - Dos dulces por cada 50 cm de altura hasta un máximo de 150 cm por persona
  - Dulces: 🍰 🍬 🍡 🍭 🍪 🍫 🧁 🍩
  - En caso contrario retornará un error.
""";

String _tip = """
* Puedes usar estructuras de control como condicionales y bucles para implementar la lógica del programa.
* Asegúrate de validar la entrada y manejar posibles errores.
* Utiliza funciones para organizar mejor tu código y hacerlo más legible.
""";

String _solution = """
```py
```
""";