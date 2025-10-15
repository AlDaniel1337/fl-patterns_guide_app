import 'package:patterns_guide_app/features/solid/domain/solid_principles.entity.dart';

SolidPrinciples openClosePrinciple = SolidPrinciples(
  name: 'Open/Close Principle',

  description: 'El Principio Abierto/Cerrado (OCP) establece que las entidades de software (clases, módulos, funciones, etc.) deben estar abiertas para la extensión, pero cerradas para la modificación. Esto significa que se debe poder agregar nueva funcionalidad a una entidad sin modificar su código existente.',
  
  characteristics: [
    'Se debe poder aumentar la funcionalidad sin que haya necesidad de modificar el funcionamiento ya existente.',
    'El comportamiento de una clase debe poder extenderse sin necesidad de modificar su código fuente.',
    'Se pueden agregar nuevas funcionalidades mediante la herencia o la composición.'
  ],

  violations: [
    "Cambios frecuentes en el código existente",
    "Código rígido y difícil de extender",
    "Falta de modularidad",
    "Alta dependencia entre módulos",
    "Dificultad para agregar nuevas funcionalidades",
    "Una clase o módulo afecta muchas capas (presentación, almacenamiento, etc.)",
    "Cuando se modifica una dependencia afecta a varias clases o módulos",
  ],

  benefits: [
    'Facilita la mantenibilidad del código al permitir agregar nuevas funcionalidades sin modificar el código existente.',
    'Promueve la reutilización de componentes al permitir extender su comportamiento.',
    'Reduce el riesgo de introducir errores en el código existente al minimizar las modificaciones.',
    'Facilita las pruebas unitarias al permitir aislar y probar nuevas funcionalidades sin afectar las existentes.',
    'Mejora la flexibilidad del sistema al permitir adaptarse a nuevos requisitos sin cambios significativos.'
  ],

  correctExample: _correctExample,
  wrongExample: _wrongExample,

);



final String _correctExample = '''
**Aplicando el principio**

**Para aplicar el principio se utilizarían tres partes**
* Un interface o clase con el funcionamiento mínimo
* Las implementaciones
* Y su uso en las demás clase

*Cada vez que se quiera agregar una nueva forma solo se crear el `AreaCalculator` no necesita modificarse*

***

**Clase abstracta Shape**
```dart
abstract class Shape {
  double calculateArea();
}
```

**Clases que implementan Shape**
```dart
class Cicrcle extends Shape {
  double radius;
  Cicrcle(this.radius);

  @override
  double calculateArea() => 0.0;
}
class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double calculateArea() => 0.0;
}
```

**Clase que usa Shape**
```dart
class AreaCalculator {
  double calculateArea(Shape shape) => shape.calculateArea();
}
```
''';

final String _wrongExample = '''
**No aplicando el principio**

*Cada vez que se quiera agregar una *nueva forma* se tiene que modificar el `AreaCalculator`*

```dart
class Shape {
  String type;
  Shape({required this.type});
}

class AreaCalculator {
  double calculateArea(Shape shape){
    if(shape.type == "circle"){}
    if(shape.type == "square"){}

    return 0.0;
  }
}
```
''';