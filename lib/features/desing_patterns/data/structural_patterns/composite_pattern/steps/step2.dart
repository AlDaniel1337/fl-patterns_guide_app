String step2 = """
### Hoja (elemento simple)

```dart
class MenuItem implements MenuComponent {
  final String titulo;
  final IconData icono;

  MenuItem(this.titulo, this.icono);

  @override
  Widget render() {
    return ListTile(
      leading: Icon(icono),
      title: Text(titulo),
      onTap: () => debugPrint("Seleccionado: \$titulo"),
    );
  }
}
```
""";