String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que eres un YouTuber (el "**Sujeto**") y tienes muchos suscriptores (los "**Observadores**") que quieren saber inmediatamente cuándo publicas un nuevo video.

Sin un sistema automático, tendrías que notificar a cada suscriptor uno por uno cada vez que subes contenido, lo cual es imposible.
![](assets/patterns/14_Observer/observer-comic-2-es.png)

El patrón Observer resuelve este problema creando un mecanismo de suscripción.

* Suscripción: Tus seguidores se "suscriben" a tu canal. En segundo plano, tu canal (el Sujeto) los añade a una lista de observadores.
* Cambio de Estado: Cuando publicas un nuevo video, el estado de tu canal cambia.
* Notificación: Inmediatamente después, tu canal recorre su lista de suscriptores y llama a un método `actualizar()` en cada uno de ellos, enviándoles una notificación sobre el nuevo video.
![](assets/patterns/14_Observer/observer-comic-1-es.png)

La gran ventaja es que el YouTuber (Sujeto) no necesita conocer a cada suscriptor individualmente. Simplemente sabe que tiene una lista de "cosas" que notificar. Cualquier objeto que quiera ser notificado (un usuario, un servicio de logging, un sistema de archivo) puede suscribirse siempre que implemente la interfaz de Observador.

De esta manera, se establece una relación en la que un objeto (el Sujeto) puede notificar a múltiples objetos dependientes (los Observadores) de forma automática cada vez que su estado cambia, manteniéndolos desacoplados entre sí.

""";