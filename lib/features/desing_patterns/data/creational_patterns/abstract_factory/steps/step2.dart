String step2 = """
### Productos concretos.
**Implementación de los metodos definidos en la interface**

**Productos Concretos para Android**
```dart
class BotonAndroid implements Boton {
  @override
  Widget render(String texto, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      onPressed: onPressed,
      child: Text("\$texto"),
    );
  }
}

class CheckboxAndroid implements CheckboxWidget {
  @override
  Widget render(bool value, ValueChanged<bool?> onChanged) {
    return Checkbox(
      activeColor: Colors.green,
      value: value,
      onChanged: onChanged,
    );
  }
}
```

**Productos Concretos para iOS**
```dart
class BotonIOS implements Boton {
  @override
  Widget render(String texto, VoidCallback onPressed) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: onPressed,
      child: Text("\$texto"),
    );
  }
}

class CheckboxIOS implements CheckboxWidget {
  @override
  Widget render(bool value, ValueChanged<bool?> onChanged) {
    return Checkbox(
      activeColor: Colors.blue,
      value: value,
      onChanged: onChanged,
    );
  }
}
```
""";