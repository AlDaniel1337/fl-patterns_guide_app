import 'package:patterns_guide_app/features/solid/domain/solid_principles.entity.dart';

SolidPrinciples interfaceSegregationPrinciple = SolidPrinciples(
  name: 'Interface Segregation Principle',

  description: 'El Principio de Segregación de Interfaces (ISP) establece que ningún cliente debe verse obligado a depender de métodos que no utiliza. En otras palabras, las interfaces deben ser específicas y contener solo los métodos que son relevantes para el cliente en cuestión. Esto promueve un diseño más limpio y evita la implementación de métodos innecesarios en las clases que implementan la interfaz.',

  characteristics: [
    'Las interfaces deben ser específicas y contener solo los métodos que son relevantes para el cliente.',
    'Los clientes no deben verse obligados a depender de métodos que no utilizan.',
    'Se deben crear múltiples interfaces específicas en lugar de una interfaz general.',
    'Las clases que implementan una interfaz deben proporcionar implementaciones solo para los métodos que realmente utilizan.'
  ],

  violations: [
    "Clases que implementan métodos que no utilizan",
    "Interfaces demasiado grandes y generales",
    "Dificultad para mantener y extender el código debido a dependencias innecesarias",
    "Aumento de la complejidad del sistema debido a la implementación de métodos no utilizados",
    "Falta de cohesión en las interfaces",
    "Cuando una clase se ve obligada a implementar métodos que no necesita",
    "Cuando se introducen cambios en una interfaz que afectan a múltiples clases que no utilizan esos métodos",
  ],

  benefits: [
    'Mejora la mantenibilidad del código al reducir las dependencias innecesarias entre clases.',
    'Facilita la comprensión del sistema al tener interfaces más específicas y enfocadas.',
    'Promueve un diseño más limpio y modular al evitar la implementación de métodos no utilizados.',
    'Reduce el riesgo de errores al minimizar las modificaciones en las interfaces que afectan a múltiples clases.',
    'Facilita las pruebas unitarias al permitir aislar y probar clases con interfaces específicas.'
  ],

  correctExample: _correctExample,
  wrongExample: _wrongExample,

);



final String _correctExample = '''
**Aplicando el principio**

*Hay que identificar los metodos que **no son relevantes** para todas las clases donde se implementara.*
* Divide la interfaz principal en varias interfaces más pequeñas y específicas.
* Haz que cada clase implemente solo las interfaces que realmente necesita.
* Evitar que queden `UnimplementedError` en las clases que no lo necesitan.

***

**Clases abstractas para definir interfaces específicas**
```dart
abstract class Phone {
  void makeCall();
}
abstract class EmailDevice {
  void sendEmail();
}
abstract class WebBrowser {
  void browseInternet();
}
abstract class Camera {
  void takePicture();
}
```

**Clases que implementan solo las interfaces que necesitan**
```dart
class Smartphone implements Phone, EmailDevice, WebBrowser, Camera {
  @override
  void browseInternet() {}
  @override
  void makeCall() {}
  @override
  void sendEmail() {}
  @override
  void takePicture() {}
}

class SmartWatch implements Phone {
  @override
  void makeCall() {}
}
```
''';

final String _wrongExample = '''
**No aplicando el principio**

*Una interfaz grande y general que obliga a las clases a implementar métodos que no necesitan.*
* En alguna clase se implementan metodos que no son relevantes.
* Quedan metodos con `UnimplementedError` o vacios.

```dart
//#1 Clase abstracta
abstract class SmartDivice {
  void makeCall();
  void sendEmail();
  void browseInternet();
  void takePicture();
}

//+ Clase donde SI se puede implementar
class Smartphone implements SmartDivice {
  @override
  void browseInternet() {}
  @override
  void makeCall() {}
  @override
  void sendEmail() {}
  @override
  void takePicture() {}
}

//- Clase donde NO se puede implementar
class SmartWatch implements SmartDivice {
  @override
  void browseInternet() {} // Solo puede implementar esta funcion
  @override
  void makeCall() {}
  @override
  void sendEmail() {}
  @override
  void takePicture() {}
}
```
''';