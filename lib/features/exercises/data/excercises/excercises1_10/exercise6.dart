import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise6 = ExerciseEntity(
  title: "# Ejercicio 6 - Aspect Ratio",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa que se encargue de calcular el aspect ratio de una imagen a partir de una url.**

* Url de ejemplo:
  * https://raw.githubusercontent.com/mouredevmouredev/master/mouredev_github_profile.png
* Por ratio hacemos referencia por ejemplo a los "16:9" de una
  * imagen de 1920*1080px.
""";

String _tip = """
* Puedes usar la librería `http` para descargar la imagen.
* Puedes usar la librería `image` para manejar imágenes.
* Puedes usar la clase `Image` de la librería `image` para cargar una imagen desde un array de bytes.
* Puedes usar las propiedades `width` y `height` de la clase `Image` para obtener las dimensiones de la imagen.
* Puedes usar la función `gcd` de la librería `dart:math` para calcular el máximo común divisor.
""";

String _solution = """
```py
```
""";