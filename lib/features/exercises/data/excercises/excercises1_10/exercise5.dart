import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise5 = ExerciseEntity(
  title: "# Ejercicio 5 - Polígonos",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una única función (importante que sólo sea una) que sea capaz de calcular y retornar el área de un polígono.**

* La función recibirá por parámetro sólo UN polígono a la vez.
* Los polígonos soportados serán Triángulo, Cuadrado y Rectángulo.
* Imprime el cálculo del área de un polígono de cada tipo.
""";

String _tip = """
* Puedes usar clases para representar los diferentes tipos de polígonos.
* Puedes usar herencia para compartir código entre las diferentes clases de polígonos.
* Puedes usar el principio de responsabilidad única para que cada clase tenga una única responsabilidad.
* Puedes usar el principio de abierto/cerrado para que las clases estén abiertas a la extensión pero cerradas a la modificación.
* Puedes usar el principio de sustitución de Liskov para que las clases derivadas puedan sustituir a las clases base.
* Puedes usar el principio de segregación de interfaces para que las interfaces sean específicas de cada cliente
""";

String _solution = """
```py
from dataclasses import dataclass
from abc import ABC, abstractmethod
import math

@dataclass
class Poligono(ABC):
  lados: int  # número de lados en común para cualquier polígono
  
  @abstractmethod
  def area(self) -> float:
    pass



@dataclass
class Triangulo( Poligono ):
  base: float
  altura: float
  
  def __post_init__(self):
    self.lados = 3

  def area(self) -> float:
    return (self.base * self.altura) / 2
    


@dataclass
class Cuadrado( Poligono ):
  lado: float
  
  def __post_init__(self):
    self.lados = 4

  def area(self) -> float:
    return self.lado ** 2



@dataclass
class Rectangulo( Poligono ):
  base: float
  altura: float
  
  def __post_init__(self):
    self.lados = 4

  def area(self) -> float:
    return self.base * self.altura
    
t = Triangulo(base=10, altura=5, lados=0)
c = Cuadrado(lado=4, lados=0)
print(f"Triángulo -> lados: {t.lados}, área: {t.area()}")
print(f"Cuadrado  -> lados: {c.lados}, área: {c.area()}")
```
""";