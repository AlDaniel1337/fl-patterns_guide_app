String step3 = """
### Abstracción

```dart
abstract class Notificacion {
  final INotificacionImplementacion implementacion;

  Notificacion(this.implementacion);

  void enviar(BuildContext context, String mensaje);
}
```
""";
