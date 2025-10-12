String step2 = """
### Elementos concretos

```dart
class Circulo extends Figura {
  final double radio;
  Circulo(this.radio);

  @override
  void aceptar(FiguraVisitor visitor) => visitor.visitarCirculo(this);
}

class Rectangulo extends Figura {
  final double ancho;
  final double alto;
  Rectangulo(this.ancho, this.alto);

  @override
  void aceptar(FiguraVisitor visitor) => visitor.visitarRectangulo(this);
}
```
""";