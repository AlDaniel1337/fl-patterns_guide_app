import 'package:patterns_guide_app/features/solid/domain/solid_principles.entity.dart';

SolidPrinciples singleResponsibilityPrinciple = SolidPrinciples(
  name: 'Single Responsibility Principle',
  
  description: 'El Principio de Responsabilidad Única (SRP) establece que cada clase o módulo debe tener una única responsabilidad o motivo de cambio. Esto facilita el mantenimiento, la comprensión y la reutilización del código, ya que cada componente se enfoca en una tarea específica y bien definida.',
  
  characteristics: [
    'Cada clase debe de hacerse cargo de una sola tarea o responsabilidad central y hacerla bien.',
    'Un módulo debe tener una única razón para cambiar.',
    'Un módulo debe ser responsable de solo un usuario o interesado.' 
  ],

  violations: [
    "Nombres de clases y módulos demasiado genéricos",
    "Cambios en el código suele afectar la clase o módulo",
    "La clase involucra múltiples capas",
    "Número elevado de importaciones",
    "Cantidad elevada de métodos públicos",
  ],

  benefits: [
    'Mejora la mantenibilidad del código al reducir la complejidad.',
    'Facilita la comprensión del código al tener responsabilidades claras y definidas.',
    'Promueve la reutilización de componentes al tener funcionalidades específicas.',
    'Reduce el riesgo de errores al minimizar las dependencias entre módulos.',
    'Facilita las pruebas unitarias al permitir aislar responsabilidades individuales.'
  ],

  correctExample: _correctExample,
  wrongExample: _wrongExample,

);



final String _correctExample = '''
**Aplicando el principio**

*La responsabilidad de la clase se divide en tres clases más pequeñas que manejan tareas específicas:*

***

**Clase que representa al usuario.**
```dart
class User {
  String name;
  String email;

  User({required this.name, required this.email });
}
```


**Clase que se encarga únicamente de manejar la base de datos.**
```dart
class UserRepository {
  void saveUserToDatabase(User user){}
}
```

**Clase que se encarga únicamente de la interfaz de usuario.**
```dart
class UserView {
  void showWelcomeMessage(){}
}
```
''';

final String _wrongExample = '''
**No aplicando el principio**

*La clase funciona como*
* Interface que guarda información del usuario.
* Administra el almacenamiento en la base de datos.
* Muestra mensajes al usuario.
```dart
class User {
  String name;
  String email;

  User({required this.name, required this.email });

  void saveUserToDatabase(){}
  
  void showWelcomeMessage(){}
}
```
''';