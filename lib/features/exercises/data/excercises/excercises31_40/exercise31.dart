import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise31 = ExerciseEntity(
  title: "# Ejercicio 31 - Marco de asteriscos",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que reciba un texto y muestre cada palabra en una línea, formando un marco rectangular de asteriscos.**

* ¿Qué te parece el reto? Se vería así:
```
**********
* ¿Qué   *
* te     *
* parece *
* el     *
* reto?  *
**********
```
""";

String _tip = """
* Divide el texto en palabras utilizando un espacio como separador.
* Encuentra la longitud de la palabra más larga para determinar el ancho del marco.
* Utiliza bucles para construir el marco superior, las líneas con palabras y el marco inferior
""";

String _solution = """
```py
  values = str1.split(" ")
  
  longitud = 0
  headerFooter = ""
  space = ""
  
  for val in values:
    if( len(val) > longitud ): longitud = len(val)
  
  for i in range(0, longitud+4):
    headerFooter += "*"
  
  print(headerFooter)
      
  for val in values:        
    space = ""
    for i in range(0, longitud - len(val)):
        space += " "
    
    print(f"* {val}{space} *")
      
  print(headerFooter)
```
""";