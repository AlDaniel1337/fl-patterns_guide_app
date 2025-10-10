String step4 = """
### Cliente (UI de Flutter).

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Contador _contador = Contador();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Observer en Flutter")),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextoContador(_contador), // Observador 1
              const SizedBox(height: 20),
              BarraProgreso(_contador), // Observador 2
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _contador.incrementar,
                child: const Text("Incrementar"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _contador.reiniciar,
                child: const Text("Reiniciar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
""";