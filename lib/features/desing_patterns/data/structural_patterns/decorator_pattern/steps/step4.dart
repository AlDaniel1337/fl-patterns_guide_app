String step4 = """
### Decoradores concretos.

**Decorador concreto: añade borde**
```dart
class BordeDecorator extends MensajeDecorator {
  const BordeDecorator(super.mensaje, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: mensaje,
    );
  }
}
```

**Decorador concreto: añade sombra**
```dart
class SombraDecorator extends MensajeDecorator {
  const SombraDecorator(super.mensaje, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: mensaje,
    );
  }
}
```

**Decorador concreto: añade ícono**
```dart
class IconoDecorator extends MensajeDecorator {
  final IconData icono;

  const IconoDecorator(super.mensaje, this.icono, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icono, color: Colors.blue),
        const SizedBox(width: 8),
        mensaje,
      ],
    );
  }
}
```
""";