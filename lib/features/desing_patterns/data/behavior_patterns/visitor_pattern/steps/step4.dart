String step4 = """
### Visitante concreto

```dart
class RenderVisitor extends FiguraVisitor {
  final Canvas canvas;
  final Paint paint;

  RenderVisitor(this.canvas, this.paint);

  @override
  void visitarCirculo(Circulo circulo) {
    canvas.drawCircle(const Offset(100, 100), circulo.radio, paint);
  }

  @override
  void visitarRectangulo(Rectangulo rectangulo) {
    canvas.drawRect(
      Rect.fromLTWH(50, 200, rectangulo.ancho, rectangulo.alto),
      paint,
    );
  }
}
```
""";