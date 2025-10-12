String hypotheticalExample = """
### Ejemplo hipotético:
Imagina una torre de control en un aeropuerto. En el aire hay varios aviones que necesitan coordinar sus aterrizajes y despegues.

Sin una torre de control, los pilotos tendrían que comunicarse directamente entre sí. El piloto del avión A tendría que hablar con el piloto del avión B para preguntarle su posición, con el piloto del C para saber su altitud, y así sucesivamente. Esto crearía una red de comunicaciones caótica y peligrosa, donde cada piloto necesitaría conocer el estado de todos los demás.

![](assets/patterns/19_Mediator/live-example.png)

El patrón Mediator resuelve este problema introduciendo un objeto central (el "mediador"), que en este caso es la Torre de Control.

Funciona así:
* Comunicación Centralizada: Ningún avión habla directamente con otro. Todas las comunicaciones pasan a través de la Torre de Control.
* Solicitudes y Comandos: Cuando un avión quiere aterrizar, no le pregunta a los demás. Le envía una solicitud a la Torre de Control.
* Coordinación: La Torre de Control, que tiene una visión completa de la situación (qué pistas están libres, qué otros aviones están cerca), procesa la solicitud y da la orden. Puede decirle al avión A que aterrice y al avión B que espere en el aire.

De esta manera, los objetos `Avion` (llamados "Colegas" en el patrón) no se conocen entre sí; solo conocen al `Mediator` (la Torre). La Torre de Control se encarga de toda la lógica compleja de interacción, lo que reduce drásticamente las dependencias entre los aviones y hace que el sistema sea mucho más fácil de gestionar y organizar.
""";