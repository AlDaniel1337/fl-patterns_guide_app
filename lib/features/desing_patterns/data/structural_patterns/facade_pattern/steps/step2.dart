String step2 = """
### Fachada (Facade)
Simplifica el uso de todos los servicios de notificación a través de una única interfaz.

```dart
class NotificacionFacade {
  final ServicioEmail _email = ServicioEmail();
  final ServicioSMS _sms = ServicioSMS();
  final ServicioPush _push = ServicioPush();

  void enviarNotificacion({
    required String tipo,
    required String destino,
    required String mensaje,
  }) {
    switch (tipo) {
      case 'email':
        _email.enviarEmail(destino, mensaje);
        break;
      case 'sms':
        _sms.enviarSMS(destino, mensaje);
        break;
      case 'push':
        _push.enviarPush(destino, mensaje);
        break;
      default:
        debugPrint("❌ Tipo de notificación no soportado");
    }
  }
}
```
""";