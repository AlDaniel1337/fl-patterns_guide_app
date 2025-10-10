String step2 = """
### Estrategias concretas

```dart
class ValidarLongitud implements EstrategiaValidacion {
  final int min;

  ValidarLongitud(this.min);

  @override
  String? validar(String valor) {
    return valor.length < min ? "Debe tener al menos \$min caracteres" : null;
  }
}

class ValidarEmail implements EstrategiaValidacion {
  @override
  String? validar(String valor) {
    if (!valor.contains('@') || !valor.contains('.')) {
      return "Debe ser un correo válido";
    }
    return null;
  }
}

class ValidarNumerico implements EstrategiaValidacion {
  @override
  String? validar(String valor) {
    return double.tryParse(valor) == null ? "Solo se permiten números" : null;
  }
}
```
""";