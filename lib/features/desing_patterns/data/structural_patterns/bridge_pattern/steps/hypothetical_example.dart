String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que queremos desarrollar una herramienta de dibujo que nos permita crear diferentes figuras geométricas (cuadrados, círculos) y que cada figura pueda tener diferentes colores (rojo, azul).

Si lo hiciéramos de forma tradicional, podríamos terminar creando una clase para cada combinación posible: 
  * CuadradoRojo, CuadradoAzul, CirculoRojo, CirculoAzul, etc. 
  * Esto sería muy poco práctico. 

Si quisiéramos añadir un nuevo color (verde), tendríamos que crear una nueva clase para cada figura (CuadradoVerde, CirculoVerde). Y si añadiéramos una nueva figura (triángulo), tendríamos que crear TrianguloRojo, TrianguloAzul, etc.
![](assets/patterns/07_Bridge/problem-es.png)

El patrón Bridge soluciona esto construyendo un "puente" entre las figuras y los colores, permitiendo que ambos puedan variar de forma independiente.

**Lo hacemos de la siguiente manera:**
* Creamos una jerarquía de clases para las Figuras (la Abstracción).
* Creamos otra jerarquía de clases para los Colores (la Implementación).
* La Figura no sabrá los detalles de cómo se implementa un color, y el Color no sabrá nada sobre la forma de la figura. La figura simplemente contendrá una referencia a un objeto Color.

Así, cuando queramos crear un círculo rojo, simplemente creamos un objeto Circulo y le pasamos un objeto `ColorRojo`. Si más tarde queremos que ese mismo círculo sea azul, solo le cambiamos el objeto Color por un `ColorAzul`, sin necesidad de crear un objeto nuevo.
![](assets/patterns/07_Bridge/solution-es.png)

El "puente" nos permite conectar cualquier figura con cualquier color dinámicamente, evitando una explosión de clases y haciendo el sistema mucho más flexible y escalable.
![](assets/patterns/07_Bridge/bridge-3-es.png)
""";