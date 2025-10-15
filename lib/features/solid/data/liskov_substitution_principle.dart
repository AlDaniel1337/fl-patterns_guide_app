import 'package:patterns_guide_app/features/solid/domain/solid_principles.entity.dart';

SolidPrinciples liskovSubstitutionPrinciple = SolidPrinciples(
  name: 'Liskov Substitution Principle',

  description: 'El Principio de Sustitución de Liskov (LSP) establece que los objetos de una clase derivada deben poder sustituir a los objetos de la clase base sin afectar el comportamiento del programa. En otras palabras, si S es un subtipo de T, entonces los objetos de tipo T en un programa pueden ser reemplazados por objetos de tipo S sin alterar las propiedades deseables del programa (exactitud, realización de tareas, etc.).',

  characteristics: [
    'Las clases derivadas deben ser completamente intercambiables con sus clases base.',
    'Los métodos que utilizan referencias a la clase base deben poder utilizar objetos de la clase derivada sin conocer las diferencias.',
    'Las precondiciones no pueden ser reforzadas en una clase derivada.',
    'Las postcondiciones no pueden ser debilitadas en una clase derivada.',
    'Las invariantes de la clase base deben mantenerse en la clase derivada.'
  ],

  violations: [
    "Comportamiento inesperado al sustituir una clase por otra",
    "Errores en tiempo de ejecución debido a incompatibilidades entre clases",
    "Dificultad para reutilizar código debido a dependencias rígidas",
    "Falta de coherencia en la jerarquía de clases",
    "Violación de las expectativas del cliente sobre el comportamiento de una clase",
    "Cuando una subclase no puede cumplir con el contrato establecido por la superclase",
    "Cuando se introducen excepciones o errores inesperados al usar una subclase en lugar de su superclase",
  ],

  benefits: [
    'Mejora la mantenibilidad del código al permitir que las clases derivadas se utilicen de manera intercambiable con sus clases base.',
    'Facilita la reutilización de código al permitir que las clases derivadas se integren sin problemas en el sistema existente.',
    'Reduce el riesgo de errores en tiempo de ejecución al garantizar que las clases derivadas cumplan con las expectativas establecidas por sus clases base.',
    'Promueve un diseño más coherente y lógico de la jerarquía de clases, lo que facilita la comprensión y el mantenimiento del código.',
    'Facilita las pruebas unitarias al permitir que las clases derivadas se prueben en el contexto de sus clases base sin necesidad de modificaciones adicionales.'
  ],

  correctExample: _correctExample,
  wrongExample: _wrongExample,

);



final String _correctExample = '''
**Aplicando el principio**

*Para aplicar el principio se utilizarían tres partes*
* Un interface o clase con el funcionamiento mínimo
* Las implementaciones
* Y su uso en las demás clase

*Cada vez que se quiera agregar una nueva forma solo se crear el `Vehicle` no necesita modificarse*

***

**Clases abstractas y metodos vacios para que las clases hijas implementen lo que necesiten**
```dart
abstract class Vehicle {
  void move();
}

abstract class ElectricVehicle extends Vehicle {
  void charge() {}
}

abstract class PetrolVehicle extends Vehicle {
  void refuel() {} 
}
```

**Implementaciones concretas de las clases abstractas**
```dart
class ElectricCar extends ElectricVehicle {
  @override
  void move() {}
  @override
  void charge() {}
}
class PetrolCar extends PetrolVehicle {
  @override
  void move() {}
  @override
  void refuel() {}
}
```

**Uso de las clases sin importar su tipo concreto**
```dart
void serviceFuelVehicle(PetrolVehicle vehicle){
  vehicle.refuel();
}
void serviceElectricVehicle(ElectricVehicle vehicle){
  vehicle.charge();
}
```
''';

final String _wrongExample = '''
**No aplicando el principio**

*Los nombres de los metodos pueden ser incorrectoso dar la idea equivocada*
* Un metodo `refuel` en un `ElectricCar` puede sonar raro pero no es incorrecto, ya que el principio se enfoca en el comportamiento y la capacidad de sustitución, no en la semántica de los nombres de los métodos.*
* Si en el futuro se decide cambiar el nombre del metodo `refuel` a `recharge` en la clase `ElectricCar`, esto no violaría el principio, siempre y cuando el comportamiento esperado (recargar energía) se mantenga consistente con la interfaz definida en la clase base `Vehicle`.

```dart
// 1 Clase abstracta
abstract class Vehicle {
  void refuel();
  void move();
}

// 2 Definicion / Implementacion
class ElectricCar extends Vehicle {
  @override
  void move() {}
  @override
  void refuel() {}
  
}

class PetrolCar extends Vehicle {
  @override
  void move() {}
  @override
  void refuel() {}
  
}

// 3 Uso
void serviceVehicle(Vehicle vehicle){
  vehicle.refuel();
}
```
''';