String step3 = """
### Cliente (UI Flutter)

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
  String _resultado = "Esperando acción...";

  void _realizarPago(PagoTemplate metodo) {
    setState(() {
      metodo.procesarPago();
      _resultado = metodo.runtimeType.toString() + " ejecutado ✅";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Template Method en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _resultado,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _realizarPago(PagoTarjeta()),
                child: const Text("Pagar con Tarjeta"),
              ),
              ElevatedButton(
                onPressed: () => _realizarPago(PagoPayPal()),
                child: const Text("Pagar con PayPal"),
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
