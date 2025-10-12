String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que estás trabajando en un editor de texto. Escribes un párrafo, luego borras una frase y después te das cuenta de que cometiste un error y quieres **deshacer** ese cambio para recuperar la frase borrada.

Para que la función "Deshacer" (`Ctrl + Z`) funcione, el editor necesita una forma de guardar y restaurar sus estados anteriores sin complicar el código principal del editor.

![](assets/patterns/20_Memento/problem1-es.png)

El patrón Memento es perfecto para esto. Funciona como un sistema de puntos de guardado en un videojuego.

* **Originador (El Editor)**: Es el objeto cuyo estado queremos guardar. En este caso, es el editor de texto con todo su contenido actual.
* **Memento (El Snapshot/Guardado)**: Es un objeto que almacena una copia del estado del editor en un momento específico. Es como una "fotografía" inmutable del texto. Es importante destacar que solo el Editor puede leer el contenido de este snapshot para restaurarse; para otros objetos, es una caja negra.
* **Caretaker (El Historial)**: Es el objeto que guarda todos los Mementos. No sabe qué contienen, simplemente los almacena en una lista o una pila. Es el responsable de gestionar los "puntos de guardado".

El flujo sería el siguiente:

* Escribes algo en el **Editor**.
* Antes de que se realice un cambio significativo (o cada cierto tiempo), el **Editor** crea un Memento (un snapshot de su estado actual) y se lo entrega al **Historial**.
* El **Historial** guarda este Memento en su lista.
* Cuando presionas "Deshacer", el **Historial** toma el Memento más reciente de su lista y se lo devuelve al **Editor**.
* El **Editor** utiliza este Memento para restaurar su estado al punto en que se tomó esa "fotografía".

De esta manera, el patrón Memento permite capturar y externalizar el estado interno de un objeto para que pueda ser restaurado más tarde, todo ello sin violar su encapsulación.
""";