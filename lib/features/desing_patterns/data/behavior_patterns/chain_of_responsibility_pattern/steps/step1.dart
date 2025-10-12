String step1 = """
### Handler base

```dart
abstract class Validador {
  Validador? siguiente;

  Validador encadenar(Validador next) {
    siguiente = next;
    return next;
  }

  String? manejar(String valor) {
    final error = validar(valor);
    if (error != null) return error;
    return siguiente?.manejar(valor);
  }

  String? validar(String valor);
}
```
""";