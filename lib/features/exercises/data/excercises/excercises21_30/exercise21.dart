import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise21 = ExerciseEntity(
  title: "# Ejercicio 21 - Suma asíncrona de 2 números",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que sume 2 números y retorne su resultado pasados unos segundos.**

* Recibirá por parámetros los 2 números a sumar y los segundos que debe tardar en finalizar su ejecución.
* Si el lenguaje lo soporta, deberá retornar el resultado de forma asíncrona, es decir, sin detener la ejecución del programa principal.
* Se podría ejecutar varias veces al mismo tiempo.
""";

String _tip = """
* Utiliza funciones asíncronas o promesas según el lenguaje.
* Usa temporizadores o funciones de espera para simular el retraso.
* Asegúrate de manejar múltiples llamadas concurrentes correctamente.
* Considera usar un patrón de diseño adecuado para organizar tu código.
""";

String _solution = """
```py
```
""";