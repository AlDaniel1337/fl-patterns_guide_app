String step3 = """
### Contexto

```dart
class CampoTextoContexto extends StatefulWidget {
  final EstrategiaValidacion estrategia;
  final String label;

  const CampoTextoContexto({
    super.key,
    required this.estrategia,
    required this.label,
  });

  @override
  State<CampoTextoContexto> createState() => _CampoTextoContextoState();
}

class _CampoTextoContextoState extends State<CampoTextoContexto> {
  final TextEditingController _controller = TextEditingController();
  String? _error;

  void _validar() {
    setState(() {
      _error = widget.estrategia.validar(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: widget.label,
            errorText: _error,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: _validar,
          child: const Text("Validar"),
        ),
      ],
    );
  }
}
```
""";
