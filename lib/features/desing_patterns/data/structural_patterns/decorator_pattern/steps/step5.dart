String step5 = """
### Uso.
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Componemos los decoradores
    MensajeWidget mensaje = MensajeSimple("¡Hola Flutter!");
    mensaje = IconoDecorator(mensaje, Icons.message);
    mensaje = BordeDecorator(mensaje);
    mensaje = SombraDecorator(mensaje);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Decorator en Flutter")),
        body: Center(child: mensaje),
      ),
    );
  }
}
```
""";