String step3 = """
### Compuesto (contiene otros componentes)

```dart
class MenuGroup implements MenuComponent {
  final String titulo;
  final List<MenuComponent> children = [];

  MenuGroup(this.titulo);

  void add(MenuComponent component) => children.add(component);

  @override
  Widget render() {
    return ExpansionTile(
      title: Text(
        titulo,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      children: children.map((c) => c.render()).toList(),
    );
  }
}
```
""";
