String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que tienes una playlist de música en tu reproductor.
Esta playlist podría estar almacenada de diferentes maneras: a veces como una lista simple, otras como un árbol binario (organizada por artista), o incluso como una lista enlazada (si permite reordenar canciones fácilmente).

![](assets/patterns/18_Iterator/problem1.png)

Ahora, la interfaz de tu reproductor de música necesita una forma de recorrer las canciones para reproducirlas una tras otra. No debería importarle si la playlist es una lista, un árbol o cualquier otra estructura. Sería un caos si el botón "Siguiente" tuviera que tener una lógica diferente para cada tipo de playlist.

El patrón Iterator resuelve esto proporcionando un objeto universal, un "control remoto", para cualquier tipo de colección.

Funciona así:

* La **Playlist** (la Colección) es responsable de crear un objeto **Iterador** que sabe cómo recorrerla.
* La interfaz del reproductor de música (el Cliente) le pide a la playlist su iterador.
* A partir de ese momento, la interfaz solo usa los métodos simples del iterador, como `siguiente()` y `haTerminado()`, para moverse por las canciones.

El reproductor no tiene idea de cómo está organizada la playlist por dentro. Simplemente le dice al iterador "dame el siguiente", y el iterador se encarga de la lógica de navegación interna, ya sea avanzando en un array o recorriendo las ramas de un árbol.

![](assets/patterns/18_Iterator/iterator-comic-1-es.png)

De esta manera, el patrón Iterator nos permite acceder a los elementos de una colección secuencialmente sin exponer su estructura interna, desacoplando el código que recorre la colección del código que la almacena.
""";