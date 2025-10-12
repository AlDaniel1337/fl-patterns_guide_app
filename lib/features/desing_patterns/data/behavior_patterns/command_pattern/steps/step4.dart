String step4 = """
### Invocador.
Recibe comandos y los ejecuta sin saber los detalles

```dart
class ControlRemoto {
  final List<Comando> _historial = [];

  void presionar(Comando comando) {
    comando.ejecutar();
    _historial.add(comando);
  }

  void deshacerUltimo() {
    if (_historial.isNotEmpty) {
      final comando = _historial.removeLast();
      comando.deshacer();
    } else {
      debugPrint("⚠️ No hay comandos para deshacer");
    }
  }
}
```
""";