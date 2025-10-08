String step1 = """
### La clase, modelo, entidad o interface.
**Definimos las interfaces para los elementos que compondrán nuestras familias (los "productos").**

**Producto A: Botón**
```dart
abstract class Boton {
  Widget render(String texto, VoidCallback onPressed);
}
```

**Producto B: Checkbox**
```dart
abstract class CheckboxWidget {
  Widget render(bool value, ValueChanged<bool?> onChanged);
}
```
""";