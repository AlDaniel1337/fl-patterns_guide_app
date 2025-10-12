String explanation = """
### Explicación rápida:
* `Iterador<T>` → interfaz base con los métodos tieneSiguiente() y siguiente().
* `ListaTareas` → colección que oculta su estructura interna (la lista real) y solo expone un método crearIterador().
* `IteradorTareas` → recorre los elementos uno a uno sin exponer la lista.
* `Cliente (UI)` → usa el iterador para recorrer y mostrar las tareas.
""";