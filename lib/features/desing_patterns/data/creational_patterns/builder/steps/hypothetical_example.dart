String hypotheticalExample = """
### Ejemplo hipotético:
Supongamos que somos una constructora de casas y queremos ofrecer a nuestros clientes la posibilidad de personalizar sus viviendas.
![](assets/patterns/01_Builder/problem1.png)

Podríamos utilizar el patrón Builder para permitir a los clientes seleccionar diferentes características de la casa, como el número de habitaciones, el tipo de techo, el color de las paredes, piscina, jardín, etc.
![](assets/patterns/01_Builder/problem2.png)

Cada vez que un cliente quiera construir una casa, podría utilizar el `HouseBuilder` para especificar sus preferencias y luego llamar al método `build()` para obtener la casa personalizada.
![](assets/patterns/01_Builder/solution1.png)


""";