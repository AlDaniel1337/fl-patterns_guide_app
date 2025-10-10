String step3 = """
### Uso.

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final fachada = NotificacionFacade();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Facade en Flutter")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              fachada.enviarNotificacion(
                tipo: 'push',
                destino: 'usuario_123',
                mensaje: '¡Tienes un nuevo mensaje!',
              );
            },
            child: const Text("Enviar notificación"),
          ),
        ),
      ),
    );
  }
}
```
""";
