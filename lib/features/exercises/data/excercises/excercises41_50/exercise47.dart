import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise47 = ExerciseEntity(
  title: "# Ejercicio 47 - Donde está el robot?",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
Calcula dónde estará un robot (sus coordenadas finales) que se encuentra en una cuadrícula representada por los ejes "x" e "y".

* El robot comienza en la coordenada (0, 0).
* Para idicarle que se mueva, le enviamos un array formado por enteros (positivos o negativos) que indican la secuencia de pasos a dar.
* Por ejemplo: [10, 5, -2] indica que primero se mueve 10 pasos, se detiene, luego 5, se detiene, y finalmente 2.
  * El resultado en este caso sería (x: -5, y: 12)
* Si el número de pasos es negativo, se desplazaría en sentido contrario al que está mirando.
* Los primeros pasos los hace en el eje "y". Interpretamos que está mirando hacia la parte positiva del eje "y".
* El robot tiene un fallo en su programación: cada vez que finaliza una secuencia de pasos gira 90 grados en el sentido contrario a las agujas del reloj.
""";

String _tip = """
* Puedes usar variables para rastrear la posición actual del robot en los ejes "x" e "y".
* Utiliza una variable para rastrear la dirección en la que está mirando el robot (norte, oeste, sur, este).
* Recorre el array de pasos y actualiza la posición del robot según la dirección en la que está mirando.
* Después de cada secuencia de pasos, actualiza la dirección del robot girando 90 grados en sentido contrario a las agujas del reloj.
* Al final, imprime las coordenadas finales del robot.
""";

String _solution = """
```py
```
""";