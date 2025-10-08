String step1 = """
### La clase, modelo, entidad o interface.
**Representa el objeto complejo a construir**

```dart
class Pizza {
  final String masa;
  final bool queso;
  final bool pepperoni;
  final bool champinones;

  Pizza({
    required this.masa,
    this.queso = false,
    this.pepperoni = false,
    this.champinones = false,
  });

  @override
  String toString() {
    return "Pizza(masa: \$masa, queso: \$queso, pepperoni: \$pepperoni, champiñones: \$champinones)";
  }
}
```
""";