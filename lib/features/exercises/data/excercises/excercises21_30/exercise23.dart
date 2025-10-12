import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise23 = ExerciseEntity(
  title: "# Ejercicio 23 - Comparador de arrays",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que reciba dos array, un booleano y retorne un array.**

* Si el booleano es verdadero buscará y retornará los elementos comunes de los dos array.
* Si el booleano es falso buscará y retornará los elementos no comunes de los dos array.
* No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
""";

String _tip = """
* Utiliza bucles anidados para comparar los elementos de ambos arrays.
* Usa una estructura de datos para almacenar los resultados.
""";

String _solution = """
```py
def compareArrays( array1, array2, lookForSame ):
    
  answer = [[]]
  
  if(lookForSame):
    for chara in array1:
      if(chara in array2): answer.append(chara)
    return answer
  
  for chara in array1:
    if(chara not in array2): answer.append(chara)
  return answer
```
""";