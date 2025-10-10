String step4 = """
### Uso.

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Creamos varios elementos que comparten los mismos flyweights
    final elementos = List<ElementoLista>.generate(10, (index) {
      final tipo = index % 3 == 0
          ? 'alerta'
          : index % 3 == 1
              ? 'info'
              : 'ok';
      return ElementoLista(
        "Elemento \$index",
        IconoFactory.obtenerIcono(tipo),
      );
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Patrón Flyweight en Flutter")),
        body: ListView.builder(
          itemCount: elementos.length,
          itemBuilder: (context, index) {
            final e = elementos[index];
            return ListTile(
              leading: Icon(e.icono.icono, color: e.icono.color),
              title: Text(e.titulo),
            );
          },
        ),
      ),
    );
  }
}
```
""";