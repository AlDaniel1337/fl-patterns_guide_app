String step5 = """
### Uso.
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
  bool _checkValue = false;

  late UIFactory factory;

  @override
  void initState() {
    super.initState();
    // Selección automática según plataforma
    if (Platform.isAndroid) {
      factory = AndroidUIFactory();
    } else {
      factory = IOSUIFactory();
    }
  }

  @override
  Widget build(BuildContext context) {
    final boton = factory.createBoton();
    final checkbox = factory.createCheckbox();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Abstract Factory en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boton.render("Presióname", () {
                debugPrint("Botón presionado!");
              }),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Activar opción: "),
                  checkbox.render(_checkValue, (val) {
                    setState(() => _checkValue = val ?? false);
                  }),
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