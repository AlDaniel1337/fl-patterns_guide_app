import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'steps/steps.index.dart';

DesingPattern chainOfResponsibilityPattern = DesingPattern(
  name: "Chain of Responsibility",
  smallDescription: "Permite que varios objetos manejen una solicitud sin que el emisor conozca al receptor.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  icon: Icons.build,
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/21_ChainOfResponsibility/chain-of-responsibility.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño Chain of Responsibility (Cadena de Responsabilidad) es un patrón de comportamiento que **desacopla el emisor de una solicitud de sus posibles receptores**.
Crea una cadena de objetos receptores y pasa la solicitud a lo largo de esa cadena hasta que uno de los objetos la maneja. Esto permite a más de un objeto tener la oportunidad de procesar la solicitud.
""";

String _advantages = """
* **Reducción de Acoplamiento**: Los objetos que envían la solicitud (el cliente) no tienen que conocer qué objeto específico la procesará. Solo necesitan conocer el primer objeto de la cadena.
* **Flexibilidad en el Manejo**: Permite añadir, reordenar o eliminar la responsabilidad de los objetos receptores en la cadena en tiempo de ejecución.
* **Principio de Responsabilidad Única (SRP)**: Cada manejador (handler) se enfoca en una tarea específica y bien definida.
""";

String _disadvantages = """
* **Garantía de Manejo**: No hay garantía de que la solicitud sea manejada por algún objeto de la cadena. Si ningún manejador la procesa, la solicitud puede caer al final de la cadena y no ser resuelta, lo que puede requerir un manejo explícito del final de la cadena.
* **Latencia**: La solicitud puede tener que pasar por muchos objetos antes de ser manejada, lo que podría aumentar ligeramente el tiempo de respuesta.
""";



String _whenToUse = """
# Aplicabilidad
Imagina un sistema de **aprobación de solicitudes de compra** dentro de una empresa. El monto de la solicitud determina quién debe aprobarla: un empleado normal puede aprobar hasta \$100, un gerente hasta \$1000, y el director hasta \$10000.

* **Manejador (Interfaz)**: Una interfaz común (`ApprovalHandler`) con un método para manejar la solicitud y una referencia para pasar al siguiente eslabón (setNextHandler(handler)).
* **Manejadores Concretos**: Clases como `EmployeeHandler`, `ManagerHandler`, y `DirectorHandler`.
* **Cada manejador** implementa la lógica: "Si puedo manejar esta solicitud (ej: monto ≤\$100), la proceso; si no, la paso al siguiente manejador."

El Cliente: El cliente crea la cadena de responsabilidad (por ejemplo: Empleado → Gerente → Director) y luego simplemente envía la solicitud al primer eslabón: `employeeHandler.handleRequest(request)`.

## Contestar la siguiente pregunta
* ¿Tengo una solicitud que potencialmente puede ser manejada por varios objetos, y necesito una forma flexible de probarlos en secuencia hasta que uno la procese?
  * Por ejemplo:
    * Manejo de Eventos en GUI: Un evento de clic se propaga a través de un árbol de componentes hasta que un componente lo consume.
    * Filtros de Peticiones Web: Una petición HTTP pasa por filtros de autenticación, logging y validación antes de llegar al controlador final.

## Ejemplos en la vida real
* **Soporte Técnico**: Una solicitud de soporte puede pasar por varios niveles de soporte (nivel 1, nivel 2, nivel 3) hasta que alguien pueda resolver el problema.
* **Manejo de Eventos en Interfaces Gráficas**: Un evento de clic puede ser manejado por el componente más específico que lo recibe, o puede propagarse a componentes padres si no es manejado.
* **Sistemas de Logging**: Un mensaje de log puede ser procesado por diferentes manejadores (consola, archivo, servidor remoto) dependiendo de su nivel de severidad.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, explanation
];