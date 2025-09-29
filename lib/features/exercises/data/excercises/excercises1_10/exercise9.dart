import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise9 = ExerciseEntity(
  title: "# Ejercicio 9 - Decimal a Binario",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea un programa se encargue de transformar un número decimal a binario sin utilizar funciones propias del lenguaje que lo hagan directamente.**

* Para convertir un número decimal a binario, divide el número decimal entre 2 de forma sucesiva, anotando el resto (0 o 1) en cada paso
* Luego lee esos restos en orden inverso (de abajo hacia arriba) para obtener el número binario
  * *25 ÷ 2 = 12 con residuo 1*
  * *12 ÷ 2 = 6 con residuo 0*
  * *6 ÷ 2 = 3 con residuo 0*
  * *3 ÷ 2 = 1 con residuo 1*
  * *1 ÷ 2 = 0 con residuo 1*
  * Ahora, lee los residuos en orden inverso: 11001. 
  * Por lo tanto, el número decimal 25 es igual a 11001 en binario. 
""";

String _tip = """
* Puedes usar un bucle while para dividir el número entre 2 hasta que el cociente sea 0.
* Puedes usar el operador módulo (%) para obtener el residuo de la división entre 2.
* Puedes ir concatenando los residuos en una cadena de texto.
* Al final, invierte la cadena de texto para obtener el número binario.
""";

String _solution = """
```py
def binary(num):
  val = num
  res = 0
  bin = ""
  
  for i in range(0, num):
    if val > 0 :
      res = 1 if val % 2 != 0 else 0 
      val = int(val / 2)   
      bin = str(res) + bin
    else: break
```
""";