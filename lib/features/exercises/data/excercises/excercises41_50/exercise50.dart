import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise50 = ExerciseEntity(
  title: "# Ejercicio 50 - Encriptar y Desencriptar",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que sea capaz de encriptar y desencriptar texto utilizando el algoritmo de encriptación de Karaca (debes buscar información sobre él).**
""";

String _tip = """
* El algoritmo de encriptación de Karaca consiste en:
  1. Revertir el texto.
  2. Reemplazar las vocales por números específicos (a -> 0, e -> 1, i -> 2, o -> 3, u -> 4).
  3. Añadir "aca" al final del texto.
  
  *lunes -> s1n4laca*

* Para desencriptar, simplemente invierte el proceso:
  1. Elimina "aca" del final del texto.
  2. Reemplaza los números por las vocales correspondientes (0 -> a, 1 -> e, 2 -> i, 3 -> o, 4 -> u).
  3. Revertir el texto nuevamente.
""";

String _solution = """
```py
  aux = ''

  if( encript ):
    for i in text:
      if( i == 'a' or i == 'A' ):   aux = '0' + aux
      elif( i == 'e' or i == 'E' ): aux = '1' + aux
      elif( i == 'i' or i == 'I' ): aux = '2' + aux
      elif( i == 'o' or i == 'O' ): aux = '3' + aux
      elif( i == 'u' or i == 'U' ): aux = '4' + aux
      else: aux = i + aux
    aux += 'aca'
  else:
    text = text[:-3]
    for i in text:
      if(i == '0'):   aux = 'a' + aux
      elif(i == '1'): aux = 'e' + aux
      elif(i == '2'): aux = 'i' + aux
      elif(i == '3'): aux = 'o' + aux
      elif(i == '4'): aux = 'u' + aux
      else: aux = i + aux
```
""";