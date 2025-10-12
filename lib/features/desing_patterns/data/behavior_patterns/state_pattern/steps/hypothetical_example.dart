String hypotheticalExample = """
### Ejemplo hipotético:
Imagina un semáforo. El comportamiento del semáforo (qué luz se enciende a continuación) depende completamente de su estado actual.

* Si la luz está en verde, el siguiente estado debe ser amarillo.
* Si está en amarillo, el siguiente estado debe ser rojo.
* Si está en rojo, el siguiente estado debe ser verde.

Sin un patrón, podríamos terminar con una clase `Semaforo` llena de sentencias `if/else` para gestionar estas transiciones, lo cual se vuelve difícil de mantener si se añaden más estados (como un modo intermitente por la noche).

![](assets/patterns/16_State/problem1.png)

El patrón State resuelve esto encapsulando todo el comportamiento asociado con un estado particular en su propio objeto.

Funciona así:

* Creamos una clase para cada estado: `EstadoVerde`, `EstadoAmarillo` y `EstadoRojo`.
* El objeto `Semaforo` principal (el "Contexto") no contiene la lógica. Simplemente guarda una referencia a su estado actual.
* Cuando ocurre un evento (como el paso del tiempo), el semáforo le delega la responsabilidad a su objeto de estado actual.

Por ejemplo, si el estado actual es `EstadoVerde`, y se le pide que cambie, este objeto se encargará de realizar la acción (cambiar la luz a amarillo) y de decirle al `Semaforo` que su nuevo estado es ahora `EstadoAmarillo`.

De esta manera, el objeto `Semaforo` no necesita conocer las reglas de transición. Simplemente delega el trabajo al objeto de estado actual. Esto hace que el código sea mucho más limpio y que sea muy fácil añadir nuevos estados en el futuro sin modificar los existentes.
""";