String step4 = """
### Cliente (UI de Flutter).
Recibe comandos y los ejecuta sin saber los detalles

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
  final ConexionWiFi _wifi = ConexionWiFi();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón State en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _wifi.estadoNombre == "Conectado"
                    ? Icons.wifi
                    : Icons.wifi_off,
                size: 100,
                color: _wifi.estadoNombre == "Conectado"
                    ? Colors.green
                    : Colors.red,
              ),
              const SizedBox(height: 20),
              Text(
                "Estado actual: \${_wifi.estadoNombre}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _wifi.presionarBoton();
                  });
                },
                child: const Text("Cambiar estado"),
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