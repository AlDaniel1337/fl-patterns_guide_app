String step4 = """
### Iterador concreto.

```dart
class IteradorTareas implements Iterador<Tarea> {
  final List<Tarea> _tareas;
  int _indice = 0;

  IteradorTareas(this._tareas);

  @override
  bool tieneSiguiente() => _indice < _tareas.length;

  @override
  Tarea siguiente() => _tareas[_indice++];
}
```
""";