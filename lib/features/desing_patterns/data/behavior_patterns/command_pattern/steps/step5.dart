String step5 = """
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
  final Luz _luz = Luz();
  late final ControlRemoto _control;

  @override
  void initState() {
    super.initState();
    _control = ControlRemoto();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Command en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                _luz.estado ? Icons.lightbulb : Icons.lightbulb_outline,
                size: 100,
                color: _luz.estado ? Colors.yellow : Colors.grey,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _control.presionar(EncenderComando(_luz));
                  });
                },
                child: const Text("Encender"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _control.presionar(ApagarComando(_luz));
                  });
                },
                child: const Text("Apagar"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _control.presionar(AlternarComando(_luz));
                  });
                },
                child: const Text("Alternar"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _control.deshacerUltimo();
                  });
                },
                child: const Text("Deshacer"),
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