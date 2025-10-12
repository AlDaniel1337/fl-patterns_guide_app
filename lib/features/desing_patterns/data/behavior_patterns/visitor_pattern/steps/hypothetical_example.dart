String hypotheticalExample = """
### Ejemplo hipotético:

Imagina que eres un agente de seguros y necesitas calcular el costo de una póliza para diferentes tipos de propiedades: una Casa, un Banco y una Cafetería.

El problema es que la forma de evaluar cada propiedad es completamente diferente:

* Para la **Casa**, necesitas revisar la seguridad de las puertas y el estado del techo.
* Para el **Banco**, te enfocas en la bóveda de seguridad y el sistema de alarmas.
* Para la **Cafetería**, revisas los extintores de incendios y la ventilación de la cocina.

Si pusiéramos la lógica de cálculo dentro de cada clase (`Casa`, `Banco`, `Cafetería`), tendríamos que modificarlas todas cada vez que la aseguradora decida ofrecer un nuevo servicio (por ejemplo, una "inspección de seguridad" además del "cálculo de póliza").


![](assets/patterns/22_Visitor/problem1.png)

El patrón Visitor resuelve esto separando la operación (el cálculo) de los objetos sobre los que opera (las propiedades).

Funciona así:

* Las Propiedades (Elementos): Las clases `Casa`, `Banco` y `Cafetería` no saben cómo calcular una póliza. En su lugar, tienen un único método llamado aceptar(visitante).
* El Agente (Visitante): Creamos una clase `AgenteDeSeguros` (el "Visitante"). Este agente tiene un método específico para cada tipo de propiedad: `visitarCasa()`, `visitarBanco()`, `visitarCafeteria()`.

![](assets/patterns/22_Visitor/visitor-comic-1.png)

El flujo es el siguiente:
Cuando el agente va a una propiedad, digamos la Casa, la casa "acepta" al agente. Inmediatamente, la casa le dice al agente: "Soy una casa, ahora haz tu trabajo". Esto lo hace llamando al método visitarCasa() del agente y pasándose a sí misma como parámetro.

De esta manera, toda la lógica de evaluación reside en el Visitante (`AgenteDeSeguros`), no en las propiedades. Si mañana la aseguradora quiere añadir una nueva operación, como "realizar una inspección de riesgos sísmicos", simplemente creamos un nuevo visitante (`InspectorDeRiesgosSismicos`) sin tener que modificar ninguna de las clases de propiedades existentes.
""";