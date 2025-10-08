String explanation = """
### Explicación rápida:
* `Boton` → interfaz común que todos los botones deben implementar.
* `BotonAndroid` y `BotonIOS` → productos concretos.
* `BotonFactory` → clase abstracta que define el método de creación.
* `BotonAndroidFactory` y `BotonIOSFactory` → fábricas concretas.
* En `main`, decides qué fábrica usar y obtienes el botón correspondiente.
""";