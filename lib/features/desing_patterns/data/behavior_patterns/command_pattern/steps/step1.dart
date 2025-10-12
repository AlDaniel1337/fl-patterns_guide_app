String step1 = """
### Receptor 
Es quien realmente ejecuta la acción

```dart
class Luz {
  bool _encendida = false;

  void encender() {
    _encendida = true;
    debugPrint("La luz está encendida");
  }

  void apagar() {
    _encendida = false;
    debugPrint("La luz está apagada");
  }

  void alternar() {
    _encendida = !_encendida;
    debugPrint(_encendida
        ? "La luz se ha encendido"
        : "La luz se ha apagado");
  }

  bool get estado => _encendida;
}
```
""";