import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise48 = ExerciseEntity(
  title: "# Ejercicio 48 - Donde está el robot?",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un función que reciba un texto y retorne la vocal que más veces se repita.**

* Ten cuidado con algunos casos especiales.
* Si no hay vocales podrá devolver vacío.
""";

String _tip = """
* Puedes usar un mapa (diccionario) para contar las ocurrencias de cada vocal.
* Recorre el texto carácter por carácter y actualiza el conteo en el mapa.
""";

String _solution = """
```py
def robot( text ):
  vowels = {
    'a':0, 'e':0, 'i':0, 'o':0, 'u':0
  }
  
  for character in text:
      
    character = character.lower()
    
    if( character in vowels ):
      vowels[character] += 1

  max_vowel = max(vowels, key=vowels.get)
  if vowels[max_vowel] == 0:
    return ""
  return max_vowel
```
""";