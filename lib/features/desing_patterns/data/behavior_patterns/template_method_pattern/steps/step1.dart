String step1 = """
### Clase base (Template) 

```dart
abstract class PagoTemplate {
  void procesarPago() {
    validarDatos();
    procesar();
    enviarConfirmacion();
  }

  void validarDatos() {
    debugPrint("Validando datos...");
  }

  void procesar(); // paso abstracto

  void enviarConfirmacion() {
    debugPrint("Enviando confirmación al usuario...");
  }
}
```
""";