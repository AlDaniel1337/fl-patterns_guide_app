String step4 = """
### Abstracciones refinadas.

```dart
class NotificacionUrgente extends Notificacion {
  NotificacionUrgente(INotificacionImplementacion implementacion)
      : super(implementacion);

  @override
  void enviar(BuildContext context, String mensaje) {
    implementacion.mostrar(context, "Urgente: \$mensaje");
  }
}
```

```dart
class NotificacionNormal extends Notificacion {
  NotificacionNormal(INotificacionImplementacion implementacion)
      : super(implementacion);

  @override
  void enviar(BuildContext context, String mensaje) {
    implementacion.mostrar(context, mensaje);
  }
}
```
""";