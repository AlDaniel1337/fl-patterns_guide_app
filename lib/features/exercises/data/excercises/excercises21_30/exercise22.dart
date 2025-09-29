import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise22 = ExerciseEntity(
  title: "# Ejercicio 22 - Calculadora desde archivo de texto",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Lee un fichero "Challenge.txt" calcula su resultado e imprímelo.**

* El .txt se corresponde con las entradas de una calculadora.
* Cada línea tendrá un número o una operación representada por un símbolo (alternando ambos).
* Soporta números enteros y decimales.
* Soporta las operaciones suma "+", resta "-", multiplicación "*" y división "/".
* El resultado se muestra al finalizar la lectura de la última línea (si el .txt es correcto).
* Si el formato del .txt no es correcto, se indicará que no se han podido resolver las operaciones.
""";

String _tip = """
* Asegúrate de que el archivo "Challenge.txt" esté en el formato correcto.
* Lee el archivo línea por línea.
* Alterna entre números y operaciones mientras procesas las líneas.
* Utiliza una estructura de datos para almacenar el estado actual del cálculo.
* Implementa manejo de errores para casos de formato incorrecto.
* Considera usar un patrón de diseño adecuado para organizar tu código.
""";

String _solution = """
```py
```
""";