String step2 = """
### Concrete Handlers

```dart
class EmailValidador extends Validador {
  @override
  String? validar(String valor) {
    if (!valor.contains('@')) return 'El email debe contener @';
    return null;
  }
}

class PasswordValidador extends Validador {
  @override
  String? validar(String valor) {
    if (valor.length < 6) return 'La contraseña debe tener al menos 6 caracteres';
    return null;
  }
}

class UppercaseValidador extends Validador {
  @override
  String? validar(String valor) {
    if (!valor.contains(RegExp(r'[A-Z]'))) return 'Debe incluir al menos una mayúscula';
    return null;
  }
}
```
""";