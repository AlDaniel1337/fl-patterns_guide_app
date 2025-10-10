String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que estamos desarrollando un sistema de notificaciones. La notificación más básica simplemente envía un mensaje a través de un canal, como un email.

Pero, ¿qué pasa si queremos añadir funcionalidades adicionales a esa notificación sin crear una nueva clase para cada combinación posible? Por ejemplo, podríamos querer:
* Añadir un sonido de alerta.
* Marcarla como de alta prioridad.
* Enviar la notificación también por SMS.

![](assets/patterns/09_Decorator/problem2-2x.png)

Si creamos clases para cada caso (NotificacionConSonido, NotificacionConSonidoYPrioridad, NotificacionConSonidoPrioridadYSMS, etc.), tendríamos una explosión de clases imposibles de mantener.

El patrón **Decorator** resuelve esto permitiéndonos "envolver" un objeto de notificación con "decoradores" que le añaden nuevas responsabilidades de forma dinámica.

**Funciona así:**
* Tenemos nuestro objeto base: una NotificacionSimple.
* Si queremos añadirle un sonido, la envolvemos en un DecoradorDeSonido. El resultado sigue siendo un objeto de notificación, pero ahora, al enviarse, también reproducirá un sonido.
* Si además queremos que se envíe por SMS, podemos envolver el objeto ya decorado con un DecoradorDeSMS.
![](assets/patterns/09_Decorator/problem3-1.5x.png)

Cada decorador **añade su propia funcionalidad** y luego delega la tarea de enviar la notificación al objeto que está envolviendo. De esta manera, podemos **apilar** funcionalidades como si fueran capas, combinando responsabilidades de forma flexible y en tiempo de ejecución, sin tener que alterar el código del objeto original.
""";