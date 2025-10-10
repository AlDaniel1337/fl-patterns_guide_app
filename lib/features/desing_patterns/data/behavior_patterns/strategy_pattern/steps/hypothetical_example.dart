String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que estamos desarrollando una aplicación de mapas, como Google Maps o Waze. Cuando un usuario quiere ir de un punto A a un punto B, 
* La aplicación debe ser capaz de calcular la mejor ruta.

Sin embargo, la "mejor" ruta depende de la **estrategia de viaje que elija el usuario**:
* Si va en coche, la mejor ruta evitará calles peatonales y buscará las avenidas más rápidas.
* Si va caminando, la ruta puede incluir atajos por parques y calles peatonales.
* Si usa transporte público, la ruta deberá incluir paradas de autobús y estaciones de metro.
![](assets/patterns/13_Strategy/problem.png)

Si intentáramos meter toda esta lógica en una sola clase, tendríamos un código muy complejo y difícil de mantener, lleno de condicionales `(if (modo == 'coche'), else if (modo == 'caminando')`, etc.).
![](assets/patterns/13_Strategy/strategy-comic-1-es.png)

El patrón Strategy resuelve esto encapsulando cada uno de estos algoritmos de cálculo de ruta en su propia clase ("estrategia"). Todas estas clases de estrategia implementarán una interfaz común, por ejemplo, un método `calcularRuta(origen, destino)`.

Así, tendremos:
* `EstrategiaRutaEnCoche`
* `EstrategiaRutaCaminando`
* `EstrategiaRutaTransportePublico`
![](assets/patterns/13_Strategy/solution.png)

La aplicación principal (el contexto) simplemente tiene un objeto de estrategia. Cuando el usuario selecciona un modo de viaje, la aplicación asigna la estrategia correspondiente. Al presionar "Calcular ruta", la aplicación no necesita saber los detalles del algoritmo; simplemente invoca el método `calcularRuta()` de la estrategia que tiene activa en ese momento.

De esta forma, podemos añadir nuevas formas de transporte (como en bicicleta o patinete) simplemente creando una nueva clase de estrategia, sin tener que modificar el código existente de la aplicación de mapas. 
* El patrón nos permite definir una familia de algoritmos y hacerlos intercambiables.

""";