String explanation = """
### Explicación rápida:
* `Contador` → es el Sujeto (Subject); hereda de ChangeNotifier, mantiene el estado y notifica a los observadores.
* `TextoContador` y `BarraProgreso` → son los Observadores, que reaccionan a los cambios.
* `AnimatedBuilder` actúa como el vínculo entre el sujeto y el observador.
* Cuando `Contador` llama a `notifyListeners()`, todos los observadores se actualizan automáticamente.
""";