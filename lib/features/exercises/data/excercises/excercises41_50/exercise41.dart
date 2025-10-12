import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise41 = ExerciseEntity(
  title: "# Ejercicio 41 - Triángulo de Pascal",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que sea capaz de dibujar el "Triángulo de Pascal" indicándole únicamente el tamaño del lado.**
""";

String _tip = """
* El "Triángulo de Pascal" es una estructura triangular donde cada número es la suma de los dos números directamente encima de él.
* Puedes utilizar listas anidadas para representar el triángulo y bucles para llenarlo.

![](assets/ejercicios/PascalTriangleAnimated2.gif)
""";

String _solution = """
```py
def pascal( largo ):
    
  values = []
  for i in range(0, largo):
      
    aux = []
    for j in range(0,i+1):
      if(i < 2): 
        aux.append(1)
      else: 
        if(j <= 0 or j == i): 
          aux.append(1)
        else:
          val = values[i-1][j]
          val2 = values[i-1][j-1]
          aux.append( val + val2 )
      
      values.append(aux)
  
  print(values)
```
""";