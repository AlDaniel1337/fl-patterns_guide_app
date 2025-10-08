String explanation = """
### Explicación rápida:
* `Boton` y `CheckboxWidget` → interfaces para los productos.
* `BotonAndroid` / `BotonIOS` y `CheckboxAndroid` / `CheckboxIOS` → productos concretos.
* `UIFactory` → Abstract Factory.
* `AndroidUIFactory` y `IOSUIFactory` → fábricas concretas.
* En `main`, la app selecciona la fábrica según la plataforma y usa los mismos métodos (createBoton, createCheckbox) sin preocuparse de la implementación.
""";