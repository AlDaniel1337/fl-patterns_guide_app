String explanation = """
### Explicación rápida:
* `ImagenUsuario` → interfaz común.
* `ImagenReal` → la clase real que hace el trabajo pesado (descarga, render).
* `ImagenProxy` → intermediario que controla cuándo se crea y muestra la imagen real.
* El cliente `(MyApp)` usa el proxy sin saber si la imagen fue cargada o no.
""";