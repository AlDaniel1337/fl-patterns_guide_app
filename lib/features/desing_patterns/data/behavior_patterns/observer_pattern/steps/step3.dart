String step3 = """
### Observador 2

```dart
class BarraProgreso extends StatelessWidget {
  final Contador contador;

  const BarraProgreso(this.contador, {super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: contador,
      builder: (_, __) {
        final progreso = (contador.valor % 10) / 10;
        return LinearProgressIndicator(value: progreso);
      },
    );
  }
}
```
""";
