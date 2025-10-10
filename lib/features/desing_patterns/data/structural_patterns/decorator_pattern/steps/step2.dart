String step2 = """
### Componente concreto

```dart
class MensajeSimple extends MensajeWidget {
  final String texto;

  const MensajeSimple(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 16),
    );
  }
}
```
""";