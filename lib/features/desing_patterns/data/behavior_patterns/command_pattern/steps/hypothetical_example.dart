String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que estás en un restaurante. Tú eres el `Cliente`, hay un `Camarero` (Mesero), y en la cocina está el `Cocinero`.

Cuando quieres pedir algo, no vas directamente a la cocina a decirle al cocinero lo que tiene que hacer. En su lugar, transformas tu solicitud en una "orden" o "comanda".

![](assets/patterns/15_Command/command-comic-1.png)

* `Cliente`: Creas una solicitud (quiero una hamburguesa).
* `Camarero (Invocador)`: Tomas la solicitud y la conviertes en un objeto `ComandaDeHamburguesa`. Esta comanda es un objeto que contiene toda la información necesaria para ejecutar la acción (qué plato es, para qué mesa, etc.). Luego, el camarero pone la comanda en una cola en la cocina.
* `Cocinero (Receptor)`: El cocinero no necesita saber quién eres ni quién tomó la orden. Simplemente toma la siguiente comanda de la cola y ejecuta la acción que esta contiene (preparar la hamburguesa).

El patrón Command consiste en encapsular una solicitud (tu pedido) como un objeto (la comanda).

La gran ventaja de esto es que el objeto que invoca la acción (el Camarero) está completamente desacoplado del objeto que la ejecuta (el Cocinero). Esto nos permite hacer cosas muy útiles:

* Poner comandos en cola: El camarero puede tomar múltiples órdenes y ponerlas en fila para que el cocinero las prepare en secuencia.
* Guardar un historial de comandos: El restaurante puede guardar todas las comandas del día para llevar un registro.
* Deshacer comandos: Si el cliente se arrepiente justo después de pedir, el camarero podría "cancelar" la comanda antes de que el cocinero la empiece a preparar.

En resumen, el patrón Command convierte las solicitudes en objetos, permitiendo tratarlas como cualquier otro objeto: guardarlas, ponerlas en cola, pasarlas como parámetros y más.
""";