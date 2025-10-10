String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que estamos gestionando el inventario de un almacén. Tenemos **productos** individuales (como un teclado o un ratón) y también tenemos **cajas** que **pueden contener tanto productos individuales como otras cajas más pequeñas.**

Necesitamos una forma sencilla de calcular el precio total de un pedido, sin importar si es un solo producto, una caja llena de productos, o una caja grande que contiene otras cajas más pequeñas.
![](assets/patterns/08_Composite/problem-es.png)

- Si tratáramos las cajas y los productos de forma diferente, el código para calcular el precio total sería muy complejo, lleno de condicionales para saber si el elemento es una caja o un producto.

El patrón Composite resuelve esto haciendo que tanto los productos (objetos simples) como las cajas (objetos compuestos) compartan una interfaz común. Por ejemplo, 
* **Ambos podrían tener un método `getPrecio()`.**
  * Para un producto, el método `getPrecio()` simplemente devuelve su precio individual.
  * Para una caja, el método `getPrecio()` recorre todos los elementos que contiene (sean productos u otras cajas) y llama a su vez al método `getPrecio()` de cada uno, sumando todos los resultados.

De esta manera, el sistema principal **no necesita saber si está tratando con una simple pieza o con una estructura compleja**. Simplemente llama a `getPrecio()` sobre el elemento de más alto nivel (el pedido completo). El patrón **Composite** se encarga de la complejidad de forma transparente, permitiéndonos tratar tanto a los objetos individuales como a las composiciones de objetos de la misma manera.
![](assets/patterns/08_Composite/composite-comic-1-es.png)
""";