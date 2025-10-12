String step3 = """
### Cliente (Flutter UI)

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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _mensaje;

  late Validador _cadenaEmail;
  late Validador _cadenaPassword;

  @override
  void initState() {
    super.initState();

    // Construimos las cadenas
    _cadenaEmail = EmailValidador();
    _cadenaPassword = PasswordValidador()
      ..encadenar(UppercaseValidador());
  }

  void _validarFormulario() {
    final emailError = _cadenaEmail.manejar(_emailController.text);
    final passError = _cadenaPassword.manejar(_passwordController.text);

    setState(() {
      if (emailError != null) {
        _mensaje = "Error Email: \$emailError";
      } else if (passError != null) {
        _mensaje = "Error Contraseña: \$passError";
      } else {
        _mensaje = "Formulario válido";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Chain of Responsibility")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Correo"),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: "Contraseña"),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _validarFormulario,
                child: const Text("Validar"),
              ),
              const SizedBox(height: 20),
              Text(
                _mensaje ?? "Ingrese datos para validar",
                style: const TextStyle(fontSize: 16),
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
