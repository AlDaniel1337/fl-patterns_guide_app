String hypotheticalExample = """
### Ejemplo hipotético:
Supongamos que somos una mueblería y queremos ofrecer una serie de muebles similares
* Una familia de productos relacionados, digamos: Silla + Sofá + Mesilla.
* Algunas variantes de esta familia. Por ejemplo, los productos Silla + Sofá + Mesilla están disponibles en estas variantes: Moderna, Victoriana, ArtDecó.
![](assets/patterns/03_AbstractFactory/problem-es.png)

Podríamos utilizar el patrón Abstract Factory para crear una interfaz de fábrica que tenga métodos para crear cada uno de los productos de la familia (crearSilla, crearSofá, crearMesilla) para que combinen con otros objetos de la misma familia. 
![](assets/patterns/03_AbstractFactory/solution1.png)


*Los clientes se enfadan bastante cuando reciben muebles que no combinan.*
![](assets/patterns/03_AbstractFactory/abstract-factory-comic-1-es.png)

Cada vez que un cliente quiera comprar un conjunto de muebles, podría utilizar la fábrica concreta adecuada (por ejemplo, `FábricaModerna`, `FábricaVictoriana`, `FábricaArtDecó`) para obtener los productos que combinen entre sí.
![](assets/patterns/03_AbstractFactory/solution2.png)
""";