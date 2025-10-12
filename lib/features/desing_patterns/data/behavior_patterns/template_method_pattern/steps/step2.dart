String step2 = """
### Subclases concretas

```dart
class PagoTarjeta extends PagoTemplate {
  @override
  void procesar() {
    debugPrint("Procesando pago con tarjeta...");
  }
}

class PagoPayPal extends PagoTemplate {
  @override
  void procesar() {
    debugPrint("Procesando pago con PayPal...");
  }
}
```
""";