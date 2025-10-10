String explanation = """
### Explicación rápida:
* `EstrategiaValidacion` → interfaz base.
* `ValidarEmail`, `ValidarLongitud`, `ValidarNumerico` → estrategias concretas.
* `CampoTextoContexto` → el contexto, que usa una estrategia sin saber cuál.
* El usuario puede cambiar dinámicamente la estrategia desde el `Dropdown`.
""";