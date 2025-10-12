String step3 = """
### Colección concreta

```dart
class ListaTareas {
  final List<Tarea> _tareas = [];

  void agregar(Tarea tarea) => _tareas.add(tarea);

  Iterador<Tarea> crearIterador() => IteradorTareas(_tareas);
}

```
""";
