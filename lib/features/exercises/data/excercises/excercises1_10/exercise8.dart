import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise8 = ExerciseEntity(
  title: "# Ejercicio 8 - Repeticiones de palabras",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa que cuente cuantas veces se repite cada palabra y que muestre el recuento final de todas ellas.**

* Los signos de puntuación no forman parte de la palabra.
* Una palabra es la misma aunque aparezca en mayúsculas y minúsculas.
* No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
""";

String _tip = """
* Puedes usar un diccionario (mapa) para almacenar las palabras y sus repeticiones.
* Puedes usar la función split para separar las palabras de una cadena de texto.
* Puedes usar la función lower para convertir una cadena de texto a minúsculas.
* Puedes recorrer la lista de palabras y para cada palabra incrementar su contador en el diccionario.
""";

String _solution = """
```py
def repeticiones( str ):
  str = str.lower()
  partes = str.split()
  
  veces = {}
    
  for val in partes:
    if val in veces:
      veces[val] += 1
    else:
      veces[val] = 1
  
  for val in veces:
    value = veces[val]
    print(f'"{val}" se repite: {value} {"vez" if value == 1 else "veces"}')       
```
""";