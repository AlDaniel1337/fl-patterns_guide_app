String step2 = """
### Originador 

```dart
class TextoEditor {
  String _contenido = "";

  void escribir(String texto) {
    _contenido = texto;
  }

  String get contenido => _contenido;

  TextoMemento guardar() => TextoMemento(_contenido);

  void restaurar(TextoMemento memento) {
    _contenido = memento.estado;
  }
}
```
""";