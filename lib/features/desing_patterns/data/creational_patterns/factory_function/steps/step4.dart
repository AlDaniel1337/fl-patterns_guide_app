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
    // Usamos la factory function
    Shape circle = ShapeFactory("circle") as Shape;
    Shape square = ShapeFactory("square") as Shape;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Factory Function en Flutter")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              circle.draw(),
              square.draw(),
            ],
          ),
        ),
      ),
    );
  }
}
```
""";