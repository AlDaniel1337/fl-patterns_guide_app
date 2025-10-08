String hypotheticalExample = """
### Ejemplo hipotético:
Supongamos que somos una empresa de gestión logística y queremos ofrecer entregas en camiones al principio, pero dejando la posibilidad de expandirnos.
![](assets/patterns/02_FactoryMethod/problem1-es.png)

Podríamos utilizar el patrón **Factory Method** para permitir la creación de diferentes tipos de transporte (camión, barco, avión, etc.) sin modificar el código existente.
![](assets/patterns/02_FactoryMethod/solution1.png)

De esta manera, cada vez que necesitemos un nuevo tipo de transporte, simplemente creamos una nueva clase que implemente la interfaz `Transporte` y sobrescribimos el método `crearTransporte()` en una nueva clase de logística.
* Si no hubieras utilizado el patrón Factory Method, tendrías que modificar la clase `Logística` para añadir la nueva funcionalidad de transporte marítimo. Esto podría llevar a un código difícil de mantener y propenso a errores.
![](assets/patterns/02_FactoryMethod/solution2-es.png)

* Gracias al patrón Factory Method, puedes añadir nuevas formas de transporte sin modificar el código existente, lo que hace que tu aplicación sea más flexible y fácil de mantener.
![](assets/patterns/02_FactoryMethod/solution3-es.png)
""";