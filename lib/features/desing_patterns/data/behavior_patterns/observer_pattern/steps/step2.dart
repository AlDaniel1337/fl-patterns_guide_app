String step2 = """
### Observador 1

```dart
class TextoContador extends StatelessWidget {
  final Contador contador;

  const TextoContador(this.contador, {super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: contador,
      builder: (_, __) {
        return Text(
          "Valor actual: \${contador.valor}",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
```
""";