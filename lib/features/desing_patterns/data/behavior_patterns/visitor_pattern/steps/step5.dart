String step5 = """
### Cliente (UI de Flutter).
Recibe comandos y los ejecuta sin saber los detalles

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Visitor en Flutter")),
        body: CustomPaint(
          painter: FiguraPainter(),
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}
```

### Painter que usa el Visitor 
```dart
class FiguraPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    // Figuras
    final figuras = <Figura>[
      Circulo(40),
      Rectangulo(100, 60),
    ];

    // Visitante
    final visitor = RenderVisitor(canvas, paint);

    // Cada figura acepta el visitante (que sabe cómo dibujarla)
    for (final figura in figuras) {
      figura.aceptar(visitor);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
```
""";