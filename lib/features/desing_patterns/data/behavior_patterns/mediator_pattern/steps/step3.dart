String step3 = """
### Mediador concreto

```dart
class ChatSala implements MediadorChat {
  final List<UsuarioChat> _usuarios = [];

  void registrar(UsuarioChat usuario) {
    _usuarios.add(usuario);
    usuario.setMediador(this);
  }

  @override
  void enviarMensaje(String mensaje, UsuarioChat remitente) {
    for (var usuario in _usuarios) {
      if (usuario != remitente) {
        usuario.recibir(mensaje, remitente.nombre);
      }
    }
  }
}
```
""";
