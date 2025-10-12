String step4 = """
### Cliente (UI Flutter).

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
  final TextoEditor _editor = TextoEditor();
  final Historial _historial = Historial();

  final TextEditingController _controller = TextEditingController();

  void _guardar() {
    _editor.escribir(_controller.text);
    _historial.guardarEstado(_editor.guardar());
    debugPrint("Estado guardado: \${_editor.contenido}");
  }

  void _deshacer() {
    final previo = _historial.deshacer();
    _editor.restaurar(previo!);
    _controller.text = _editor.contenido;
    debugPrint("↩Estado restaurado: \${_editor.contenido}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Memento en Flutter")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: "Escribe algo...",
                  border: OutlineInputBorder(),
                ),
                onChanged: (_) => setState(() {}),
              ),
              const SizedBox(height: 20),
              Text(
                "Texto actual: \${_editor.contenido}",
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: _guardar,
                    child: const Text("Guardar estado"),
                  ),
                  ElevatedButton(
                    onPressed: _deshacer,
                    child: const Text("Deshacer"),
                  ),
                ],
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