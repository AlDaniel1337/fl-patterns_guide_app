String hypotheticalExample = """
### Ejemplo hipotético:
Supongamos que somos una mueblería y queremos ofrecer una serie de muebles similares
* Una familia de productos relacionados, digamos: Silla + Sofá + Mesilla.
* Algunas variantes de esta familia. Por ejemplo, los productos Silla + Sofá + Mesilla están disponibles en estas variantes: Moderna, Victoriana, ArtDecó.
![](assets/patterns/03_AbstractFactory/problem-es.png)

El problema es que una silla moderna no combina con una mesa victoriana. Necesitamos una forma de asegurarnos de que, cuando un cliente elige un estilo, todos los muebles que se creen pertenezcan a esa misma familia.
![](assets/patterns/03_AbstractFactory/abstract-factory-comic-1-es.png)

Podríamos utilizar el patrón Abstract Factory para resolver esto. Tendríamos una "fábrica" para cada estilo.
* FábricaModerna: Sabe cómo crear sillas, sofás y mesas de estilo moderno.
* FábricaVictoriana: Sabe cómo crear sillas, sofás y mesas de estilo victoriano.
* FábricaArtDeco: Sabe cómo crear sillas, sofás y mesas de estilo art déco.
![](assets/patterns/03_AbstractFactory/solution1.png)


Cada vez que un cliente quiera comprar un conjunto de muebles, podría utilizar la fábrica concreta adecuada (por ejemplo, `FábricaModerna`, `FábricaVictoriana`, `FábricaArtDecó`) para obtener los productos que combinen entre sí.
![](assets/patterns/03_AbstractFactory/solution2.png)
""";