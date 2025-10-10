String step3 = """
### Decorador base

```dart
abstract class MensajeDecorator extends MensajeWidget {
  final MensajeWidget mensaje;

  const MensajeDecorator(this.mensaje, {super.key});
}
```
""";
