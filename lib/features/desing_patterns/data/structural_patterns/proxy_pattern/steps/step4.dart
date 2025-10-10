String step4 = """
### Cliente (UI de Flutter).

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imagenProxy = ImagenProxy(
      'https://avatars.githubusercontent.com/u/583231?v=4',
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Proxy en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imagenProxy.mostrar(),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Simula recarga o reutilización
                  debugPrint("Intentando mostrar imagen nuevamente...");
                  imagenProxy.mostrar();
                },
                child: const Text("Mostrar nuevamente"),
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