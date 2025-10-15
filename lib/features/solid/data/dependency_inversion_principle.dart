import 'package:patterns_guide_app/features/solid/domain/solid_principles.entity.dart';

SolidPrinciples dependencyInversionPrinciple = SolidPrinciples(
  name: 'Dependency Inversion Principle',

  description: 'El Principio de Inversión de Dependencias (DIP) establece que las clases de alto nivel no deben depender de clases de bajo nivel, sino de abstracciones. Esto significa que se deben utilizar interfaces o clases abstractas para definir las dependencias, lo que permite una mayor flexibilidad y facilita la prueba de las clases de alto nivel sin depender de implementaciones concretas.',

  characteristics: [
    'Las clases de alto nivel no deben depender de clases de bajo nivel, sino de abstracciones.',
    'Se deben utilizar interfaces o clases abstractas para definir las dependencias.',
    'Permite una mayor flexibilidad y facilita la prueba de las clases de alto nivel sin depender de implementaciones concretas.',
    'Fomenta un diseño más modular y desacoplado, lo que facilita el mantenimiento y la evolución del sistema.'
  ],

  violations: [
    "Clases de alto nivel que dependen de clases de bajo nivel",
    "Falta de abstracciones para definir las dependencias",
    "Dificultad para probar las clases de alto nivel debido a dependencias concretas",
    "Aumento del acoplamiento entre clases",
    "Dificultad para mantener y extender el código debido a dependencias rígidas",
    "Cuando una clase de alto nivel depende directamente de una clase de bajo nivel",
    "Cuando se introducen cambios en una clase de bajo nivel que afectan a las clases de alto nivel"
  ],

  benefits: [
    'Mejora la mantenibilidad del código al reducir el acoplamiento entre clases.',
    'Facilita las pruebas unitarias al permitir aislar las clases de alto nivel de las implementaciones concretas.',
    'Promueve un diseño más modular y flexible, lo que facilita la evolución del sistema.',
    'Reduce el riesgo de errores al minimizar las modificaciones en las clases de bajo nivel que afectan a las clases de alto nivel.',
    'Fomenta el uso de interfaces y abstracciones, lo que mejora la claridad y comprensión del código.'
  ],

  correctExample: _correctExample,
  wrongExample: _wrongExample,

);



final String _correctExample = '''
**Aplicando el principio**

*Hay que identificar las dependencias concretas que se quieren abstraer.*
* Crear interfaces o clases abstractas para definir las dependencias.
* Hacer que las clases de alto nivel dependan de estas abstracciones en lugar de las implementaciones concretas.
* Si se quieren agregar más bases de datos solo se implementa una nueva **Database** de esta manera no se tendra que modificar la clase de servicio.

***

**Clases de usuario**
```dart
class User {
  String name;

  User({
    required this.name,
  });
}
```

**Clases abstractas de base de datos**
```dart
abstract class Database {
  void saveUser(User user);
}
```

**Implementaciones concretas de base de datos**
```dart
class MySQLDatabase implements Database{
  @override
  void saveUser(User user){}
}

class PostgresSQLDatabase implements Database{
  @override
  void saveUser(User user){}
}
```

**Uso de la abstracción en la clase de servicio**
* La clase de servicio depende de la abstracción (interfaz) en lugar de una implementación concreta.
```dart
class UserService {
  Database database;

  UserService({
    required this.database,
  });

  void saveUSer(User user){
    database.saveUser(user);
  }
}
```
''';

final String _wrongExample = '''
**No aplicando el principio**

*Se utiliza una misma interface para dos o mas bases de datos*
* La clase de servicio depende de una clase concreta
* No se puede cambiar la base de datos facilmente

```dart
// #1 Clase de usuario
class User {
  String name;

  User({
    required this.name,
  });

}

// #2 Clase concreta de base de datos
class MySQLDatabase {
  void saveUser(User user){}
}

// #3 Clase de servicio que depende de la clase concreta
class UserService {
  MySQLDatabase database; // <-- Problema: depende de una clase concreta

  UserService({
    required this.database,
  });

  void saveUser(User user){ // <-- Problema: no se puede cambiar la base de datos facilmente
    database.saveUser(user);
  }
}
```
''';