String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que trabajas en una empresa y necesitas que te aprueben un reporte de gastos. El proceso de aprobación depende del monto:

* Un gasto pequeño (menos de \$100) lo puede aprobar tu **Líder de Equipo**.
* Un gasto mediano (hasta \$1000) necesita la aprobación del **Gerente**.
* Un gasto grande (más de \$10000) requiere la autorización del **Director**.

![](assets/patterns/21_ChainOfResponsibility/chain-of-responsibility-comic-1-es.png)

Sin un patrón, el sistema que procesa la solicitud tendría una lógica compleja con if-else para decidir a quién enviar cada reporte.

El patrón Chain of Responsibility resuelve esto creando una "cadena de mando" de aprobadores.

Funciona así:

* Cada aprobador (Líder, Gerente, Director) es un eslabón de la cadena. Cada uno sabe quién es el siguiente eslabón por encima de él.
* Cuando envías tu reporte de gastos, este se entrega siempre al primer eslabón de la cadena: el Líder de Equipo.
* El Líder de Equipo mira el monto. Si tiene la autoridad para aprobarlo, lo firma y el proceso termina.
* Si el monto es demasiado alto para él, no lo rechaza. Simplemente se lo pasa al siguiente eslabón de la cadena: el Gerente.
* El Gerente repite el proceso: si puede aprobarlo, lo hace. Si no, se lo pasa al Director.

De esta manera, la solicitud "viaja" a lo largo de la cadena hasta que un eslabón tiene la capacidad de manejarla. El sistema que inicia la solicitud no necesita saber quién la aprobará al final; simplemente la entrega al inicio de la cadena y confía en que será procesada por la persona correcta.
""";