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
  final ListaTareas _lista = ListaTareas();
  final List<String> _tareasMostradas = [];

  @override
  void initState() {
    super.initState();
    _lista.agregar(Tarea("Comprar leche", true));
    _lista.agregar(Tarea("Pagar luz", false));
    _lista.agregar(Tarea("Hacer ejercicio", false));
  }

  void _mostrarTareas() {
    final iterador = _lista.crearIterador();
    _tareasMostradas.clear();

    while (iterador.tieneSiguiente()) {
      final tarea = iterador.siguiente();
      _tareasMostradas.add(
        "\${tarea.nombre} - \${tarea.completada ? "✅" : "❌"}",
      );
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Iterator en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _mostrarTareas,
                child: const Text("Mostrar tareas"),
              ),
              const SizedBox(height: 20),
              ..._tareasMostradas
                  .map((t) => Text(t, style: const TextStyle(fontSize: 18))),
            ],
          ),
        ),
      ),
    );
  }
}
```
""";