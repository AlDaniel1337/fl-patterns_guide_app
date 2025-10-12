String step2 = """
### Estados concretos

```dart
class EstadoDesconectado implements EstadoConexion {
  @override
  void manejar(ConexionWiFi contexto) {
    debugPrint("Intentando conectar...");
    contexto.cambiarEstado(EstadoConectando());
  }

  @override
  String get nombre => "Desconectado";
}

class EstadoConectando implements EstadoConexion {
  @override
  void manejar(ConexionWiFi contexto) {
    debugPrint("Conectando... éxito!");
    contexto.cambiarEstado(EstadoConectado());
  }

  @override
  String get nombre => "Conectando...";
}

class EstadoConectado implements EstadoConexion {
  @override
  void manejar(ConexionWiFi contexto) {
    debugPrint("Desconectando...");
    contexto.cambiarEstado(EstadoDesconectado());
  }

  @override
  String get nombre => "Conectado";
}
```
""";