import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise12 = ExerciseEntity(
  title: "# Ejercicio 12 - Caracteres únicos",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que reciba dos cadenas como parámetro (str1, str2) e imprima otras dos cadenas como salida (out1, out2).**

* **out1**: contendrá todos los caracteres presentes en la str1 pero NO estén presentes en str2.
* **out2**: contendrá todos los caracteres presentes en la str2 pero NO estén presentes en str1.
""";

String _tip = """
* Puedes usar conjuntos (sets) para almacenar los caracteres únicos de cada cadena.
* Puedes recorrer cada cadena y añadir cada carácter a su conjunto correspondiente.
* Puedes usar la operación de diferencia de conjuntos para obtener los caracteres únicos de cada cadena.
* Puedes usar la función join para unir los caracteres de un conjunto en una cadena de texto.
""";

String _solution = """
```py
def unique(str1, str2):
  out1 = ""
  out2 = ""
  
  for val in str1:
      if(val not in str2): out1 = out1 + val
  
  for val in str2:
      if(val not in str1): out2 = out2 + val

  print(f"STR1: {str1}")
  print(f"STR2: {str2}")
  print(f"OUT1: {out1}")
  print(f"OUT2: {out2}")
```
""";