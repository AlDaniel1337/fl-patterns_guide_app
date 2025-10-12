String step3 = """
### Comandos concretos

```dart
class EncenderComando implements Comando {
  final Luz luz;

  EncenderComando(this.luz);

  @override
  void ejecutar() => luz.encender();

  @override
  void deshacer() => luz.apagar();
}

class ApagarComando implements Comando {
  final Luz luz;

  ApagarComando(this.luz);

  @override
  void ejecutar() => luz.apagar();

  @override
  void deshacer() => luz.encender();
}

class AlternarComando implements Comando {
  final Luz luz;

  AlternarComando(this.luz);

  @override
  void ejecutar() => luz.alternar();

  @override
  void deshacer() => luz.alternar();
}
```
""";
