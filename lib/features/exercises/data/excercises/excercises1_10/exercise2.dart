import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise2 = ExerciseEntity(
  title: "# Ejercicio 2 - Anagramas",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);


String _exercise = """
**Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Bool) según sean o no anagramas.**

* Un Anagrama consiste en formar una palabra reordenando TODAS
* las letras de otra palabra inicial.
* NO hace falta comprobar que ambas palabras existan.
* Dos palabras exactamente iguales no son anagrama.
""";

String _tip = """
* Puedes usar la función len() para comprobar la longitud de las cadenas.
* Puedes usar un bucle for para recorrer los caracteres de una cadena.
* Puedes usar el operador in para comprobar si un carácter está en una cadena.
""";

String _solution = """
```py
def isAnagrama(str1, str2):
  if( len(str1) != len(str2) ): return False
  
  for val in str1:
    if val in str2: continue
    return False
  
  return True
```
""";