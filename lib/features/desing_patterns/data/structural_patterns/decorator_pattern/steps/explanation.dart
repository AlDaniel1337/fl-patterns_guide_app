String explanation = """
### Explicación rápida:
* `MensajeWidget` → interfaz base común.
* `MensajeSimple` → componente original sin decoración.
* `MensajeDecorato`r → clase abstracta que envuelve otro MensajeWidget.
* `BordeDecorator`, `SombraDecorator`, `IconoDecorator` → decoradores concretos que agregan visuales sin tocar MensajeSimple.
* `En el cliente (`main`), los decoradores se encadenan dinámicamente, formando una jerarquía flexible
""";