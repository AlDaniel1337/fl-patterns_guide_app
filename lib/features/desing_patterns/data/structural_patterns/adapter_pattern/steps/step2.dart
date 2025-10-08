String step2 = """
### Clase existente (modelo interno).

```dart
class Usuario implements IUser {
  final String nombre;
  final int edad;
  final String avatarUrl;

  Usuario({required this.nombre, required this.edad, required this.avatarUrl});

  @override
  String getNombre() => nombre;

  @override
  int getEdad() => edad;

  @override
  String getAvatarUrl() => avatarUrl;
}
```
""";