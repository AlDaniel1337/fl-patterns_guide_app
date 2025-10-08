String step2 = """
### La clase Builder.
**La asignación con la configuración y/o validación de información**

```dart
class PizzaBuilder {
  String _masa = "normal";
  bool _queso = false;
  bool _pepperoni = false;
  bool _champinones = false;

  PizzaBuilder setMasa(String masa) {
    _masa = masa;
    return this;
  }

  PizzaBuilder addQueso() {
    _queso = true;
    return this;
  }

  PizzaBuilder addPepperoni() {
    _pepperoni = true;
    return this;
  }

  PizzaBuilder addChampinones() {
    _champinones = true;
    return this;
  }

  // Método para construir el objeto Pizza
  Pizza build() {
    return Pizza(
      masa: _masa,
      queso: _queso,
      pepperoni: _pepperoni,
      champinones: _champinones,
    );
  }
}
```
""";