String step2 = """
### Producto concreto

```dart
class Usuario implements Prototype<Usuario> {
  final String nombre;
  final int edad;
  final String avatarUrl;

  Usuario({
    required this.nombre,
    required this.edad,
    required this.avatarUrl,
  });

  // Implementación del método clone()
  @override
  Usuario clone() {
    return Usuario(
      nombre: nombre,
      edad: edad,
      avatarUrl: avatarUrl,
    );
  }

  // Clonado con variaciones (estilo copyWith)
  Usuario copyWith({String? nombre, int? edad, String? avatarUrl}) {
    return Usuario(
      nombre: nombre ?? this.nombre,
      edad: edad ?? this.edad,
      avatarUrl: avatarUrl ?? this.avatarUrl,
    );
  }
```
""";