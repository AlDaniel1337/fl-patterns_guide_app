String step1 = """
### Subsistemas

**Subsistema 1: Email**
```dart
class ServicioEmail {
  void enviarEmail(String destino, String mensaje) {
    debugPrint("📧 Enviando email a \$destino: \$mensaje");
  }
}
```

**Subsistema 2: SMS**
```dart
class ServicioSMS {
  void enviarSMS(String telefono, String mensaje) {
    debugPrint("📱 Enviando SMS a \$telefono: \$mensaje");
  }
}
```

**Subsistema 3: Push**
```dart
class ServicioPush {
  void enviarPush(String usuarioId, String mensaje) {
    debugPrint("🔔 Enviando notificación push a \$usuarioId: \$mensaje");
  }
}
```
""";