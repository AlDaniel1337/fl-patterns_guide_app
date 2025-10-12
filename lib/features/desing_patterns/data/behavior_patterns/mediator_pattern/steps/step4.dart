String step4 = """
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
  late final ChatSala _sala;
  late final UsuarioChat _ana;
  late final UsuarioChat _beto;

  final TextEditingController _controller = TextEditingController();
  final List<String> _mensajes = [];

  @override
  void initState() {
    super.initState();
    _sala = ChatSala();
    _ana = UsuarioChat("Ana");
    _beto = UsuarioChat("Beto");

    _sala.registrar(_ana);
    _sala.registrar(_beto);
  }

  void _enviarMensaje() {
    final texto = _controller.text.trim();
    if (texto.isEmpty) return;

    setState(() {
      _mensajes.add("Ana: \$texto");
    });

    _ana.enviar(texto);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Mediator en Flutter")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _mensajes.length,
                  itemBuilder: (_, i) => Text(
                    _mensajes[i],
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: "Mensaje de Ana",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _enviarMensaje,
                child: const Text("Enviar"),
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