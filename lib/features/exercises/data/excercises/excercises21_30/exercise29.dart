import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise29 = ExerciseEntity(
  title: "# Ejercicio 29 - Máquina Expendedora",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Simula el funcionamiento de una máquina expendedora creando una operación que reciba dinero (array de monedas) y un número que indique la selección del producto.**

* El programa retornará el nombre del producto y un array con el dinero de vuelta (con el menor número de monedas).
* Si el dinero es insuficiente o el número de producto no existe, deberá indicarse con un mensaje y retornar todas las monedas.
* Si no hay dinero de vuelta, el array se retornará vacío.
* Para que resulte más simple, trabajaremos en céntimos con monedas de 5, 10, 50, 100 y 200.
* Debemos controlar que las monedas enviadas estén dentro de las soportadas.
""";

String _tip = """
* Piensa en cómo puedes usar bucles para recorrer el array de monedas.
* Recuerda que puedes usar la concatenación de strings para construir cada línea.
* Puedes usar un mapa para almacenar los productos y sus precios.
""";

String _solution = """
```py
```
""";