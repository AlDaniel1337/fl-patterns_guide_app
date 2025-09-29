import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise49 = ExerciseEntity(
  title: "# Ejercicio 49 - Detectar Handles",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que sea capaz de detectar y retornar todos los handles de un texto usando solamente Expresiones Regulares.**

* Debes crear una expresión regular para cada caso:
  * Handle usuario: Los que comienzan por "@"
  * Handle hashtag: Los que comienzan por "#"
  * Handle web: Los que comienzan por "www.", "http://", "https://" y finalizan con un dominio (.com, .es...)
""";

String _tip = """
* Puedes usar la clase `RegExp` de Dart para trabajar con expresiones regulares.
* Usa el método `allMatches` para encontrar todas las coincidencias en el texto.
* Recuerda que los handles de usuario y hashtag no deben incluir caracteres especiales o espacios.
* Para los handles web, considera diferentes formatos de URL y dominios comunes.
""";

String _solution = """
```py
```
""";