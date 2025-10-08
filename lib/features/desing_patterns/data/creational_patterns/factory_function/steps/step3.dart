String step3 = """
### Factory Function.

```dart
class ShapeFactory {
  factory ShapeFactory(String type) {
    if (type == "circle") {
      return Circle() as ShapeFactory; // devolvemos Circle
    } else if (type == "square") {
      return Square() as ShapeFactory; // devolvemos Square
    } else {
      throw Exception("Tipo de figura no soportado: \$type");
    }
  }
```
""";
