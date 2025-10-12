String step3 = """
### Contexto
Mantiene una referencia al estado actual

```dart
class ConexionWiFi {
  EstadoConexion _estado = EstadoDesconectado();

  void cambiarEstado(EstadoConexion nuevoEstado) {
    _estado = nuevoEstado;
  }

  void presionarBoton() {
    _estado.manejar(this);
  }

  String get estadoNombre => _estado.nombre;
}
```
""";
