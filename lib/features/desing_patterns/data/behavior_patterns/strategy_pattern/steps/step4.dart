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
  late EstrategiaValidacion _estrategia;
  String _tipoSeleccionado = 'email';

  @override
  void initState() {
    super.initState();
    _estrategia = ValidarEmail();
  }

  void _cambiarEstrategia(String tipo) {
    setState(() {
      _tipoSeleccionado = tipo;
      switch (tipo) {
        case 'email':
          _estrategia = ValidarEmail();
          break;
        case 'longitud':
          _estrategia = ValidarLongitud(6);
          break;
        case 'numerico':
          _estrategia = ValidarNumerico();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Strategy en Flutter")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DropdownButton<String>(
                value: _tipoSeleccionado,
                onChanged: (valor) => _cambiarEstrategia(valor!),
                items: const [
                  DropdownMenuItem(value: 'email', child: Text("Validar Email")),
                  DropdownMenuItem(
                      value: 'longitud', child: Text("Validar Longitud")),
                  DropdownMenuItem(
                      value: 'numerico', child: Text("Validar Numérico")),
                ],
              ),
              const SizedBox(height: 20),
              CampoTextoContexto(
                estrategia: _estrategia,
                label: "Ingresa un valor",
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