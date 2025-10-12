String step2 = """
### Colega

```dart
class UsuarioChat {
  final String nombre;
  MediadorChat? _mediador;

  UsuarioChat(this.nombre);

  void setMediador(MediadorChat mediador) {
    _mediador = mediador;
  }

  void enviar(String mensaje) {
    debugPrint("[\$nombre] envía: \$mensaje");
    _mediador?.enviarMensaje(mensaje, this);
  }

  void recibir(String mensaje, String de) {
    debugPrint("[\$nombre] recibe de [\$de]: \$mensaje");
  }
}
```
""";