String step3 = """
### Cuidador

```dart
class Historial {
  final List<TextoMemento> _mementos = [];

  void guardarEstado(TextoMemento memento) {
    _mementos.add(memento);
  }

  TextoMemento? deshacer() {
    if (_mementos.isNotEmpty) {
      _mementos.removeLast();
      return _mementos.isNotEmpty ? _mementos.last : TextoMemento("");
    }
    return TextoMemento("");
  }
}
```
""";
