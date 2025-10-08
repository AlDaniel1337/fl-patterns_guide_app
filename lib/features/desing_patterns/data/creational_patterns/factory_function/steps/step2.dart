String step2 = """
### Productos concretos.
**Implementación de los metodos definidos en la interface**

```dart
class Circle implements Shape {
  @override
  Widget draw() {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    );
  }
}
```

```dart
class Square implements Shape {
  @override
  Widget draw() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
    );
  }
}
```
""";