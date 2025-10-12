String explanation = """
### Explicación rápida:
* `TextoMemento` → almacena el estado del texto en un momento dado.
* `TextoEditor` (Originador) → crea mementos con su estado actual y puede restaurarlos.
* `Historial` (Cuidador) → gestiona los mementos (guarda y restaura el más reciente).
* `UI` (Flutter) → permite al usuario escribir, guardar y deshacer los cambios del texto.
""";