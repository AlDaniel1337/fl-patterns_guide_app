String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que estamos creando un videojuego de estrategia en tiempo real y **queremos mostrar un bosque inmenso con miles de árboles en pantalla.**
![](assets/patterns/11_Flyweight/example.png)

Si creamos un objeto separado para cada árbol, y cada objeto almacena toda su información (el modelo 3D, las texturas de la corteza, las texturas de las hojas, la información de colisión, etc.), la cantidad de memoria RAM que necesitaríamos sería gigantesca. 
* Con miles de árboles, el juego se volvería muy lento o incluso podría bloquearse.
![](assets/patterns/11_Flyweight/problem-es.png)

**Aquí es donde el patrón Flyweight es útil**. Nos damos cuenta de que, aunque hay miles de árboles, la mayoría de sus datos son idénticos. 
* Por ejemplo, todos los "árboles de pino" usan el mismo modelo 3D y las mismas texturas.
![](assets/patterns/11_Flyweight/solution1-es.png)

**El patrón Flyweight divide el objeto en dos partes:**
* Estado Intrínseco: Son los datos pesados y compartidos que no cambian (el modelo 3D y las texturas del pino). Esta información se almacena una sola vez en un objeto "flyweight".
* Estado Extrínseco: Son los datos únicos y ligeros de cada árbol (su posición (x, y) en el mapa, su tamaño y su rotación).
![](assets/patterns/11_Flyweight/solution2-es.png)

**Así, en lugar de tener 10,000 objetos de árbol completos en memoria, tenemos:**
* Un solo objeto PinoFlyweight que contiene el modelo y las texturas.
* Una lista de 10,000 conjuntos de datos extrínsecos (solo las coordenadas y el tamaño de cada árbol).
![](assets/patterns/11_Flyweight/solution3-es.png)

Cuando el motor del juego necesita dibujar el bosque, recorre la lista de coordenadas y, para cada una, le dice al único objeto PinoFlyweight: "Dibújate en esta posición y con este tamaño". De esta manera, reutilizamos el mismo objeto pesado miles de veces, logrando un ahorro masivo de memoria y mejorando el rendimiento del juego.

""";