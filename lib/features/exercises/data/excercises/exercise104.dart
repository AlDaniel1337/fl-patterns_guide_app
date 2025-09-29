import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise104 = ExerciseEntity(
  title: "# Ejercicio 104 - Agrupar Anagramas",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Un anagrama es una palabra creada a partir de la reordenación de las letras de otra palabra. Ej: saco - caso**

 * Dado un array de strings, devuelve los anagramas agrupados. Cualquier orden es válido.
 *
 * Ejemplo:
 *  Input: words = ["saco", "arresto", "programa", "rastreo", "caso"].
 *  Output: [["saco", "caso"], ["arresto", "rastreo"], ["programa"]].
""";

String _tip = """
* Ordenar letras en orden alfabético para crear una clave única para cada grupo de anagramas.
* Calcular el hash de cada palabra ordenada para usarlo como clave en un mapa.
  * Usar un diccionario (mapa) para agrupar palabras que compartan la misma clave.
""";

String _solution = """
```java
public List<List<String>> groupAnagrams(String[] strs) {
    if (strs == null || strs.length == 0) return Collections.emptyList();

    Map<String, List<String>> anagramMap = buildAnagramMap(strs);
    return new ArrayList<>(anagramMap.values());
  }

  private Map<String, List<String>> buildAnagramMap(String[] strs) {
    Map<String, List<String>> anagramMap = new HashMap<String, List<String>>();
    for (String s : strs) {
      String hash = getAnagramHash(s);
      if (!anagramMap.containsKey(hash)) {
        anagramMap.put(hash, new ArrayList<String>());
      }

      anagramMap.get(hash).add(s);
    }

    return anagramMap;
  }

  private String getAnagramHash(String s) {
    int[] letterCount = new int[26];
    for (int c : s.toCharArray()) {
      letterCount[c - 'a']++;
    }

    return Arrays.toString(letterCount);
  }
}
```
""";