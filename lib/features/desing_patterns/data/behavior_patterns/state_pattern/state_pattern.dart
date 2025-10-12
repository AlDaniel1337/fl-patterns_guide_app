import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import './steps/steps.index.dart';

DesingPattern statePattern = DesingPattern(
  name: "State",
  smallDescription: "Permite a un objeto alterar su comportamiento cuando su estado interno cambia.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  icon: Icons.build,
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/16_State/state-es.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño State (Estado) es un patrón de comportamiento que permite a un objeto **alterar su comportamiento** cuando su estado interno cambia.
El objeto parecerá cambiar su clase. En lugar de usar grandes bloques condicionales (`if/else` o `switch`) para determinar el comportamiento basado en el estado, se crea un objeto para cada estado, y el objeto principal delega el comportamiento al objeto de estado actual.
""";

String _advantages = """
* **Organización de Lógica**: Centraliza todo el comportamiento específico de un estado en una única clase, mejorando la organización y facilitando la comprensión de la lógica de cada estado.
* **Open/Closed Principle**: La clase principal está cerrada a la modificación cuando se añaden nuevos estados, ya que solo necesitas crear una nueva clase de estado.
* **Evita Condicionales**: Elimina las grandes estructuras condicionales (que son propensas a errores) que normalmente se usan para gestionar la transición y el comportamiento de los estados.
""";

String _disadvantages = """
* **Más Clases**: Aumenta el número de clases, ya que se requiere una clase para cada estado que el objeto puede tener, lo cual puede ser excesivo para sistemas con pocos estados.
* **Sobrecarga de Delegación**: Introduce un nivel de delegación que puede hacer que el código sea un poco más difícil de seguir si no estás familiarizado con el patrón.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás modelando el comportamiento de un **cajero automático** (ATM). El cajero puede estar en diferentes estados: `Inactivo`, `InsertandoTarjeta`, `SeleccionandoOperacion`, `RetirandoDinero`. La acción de un botón (ej: "Ingresar PIN") varía drásticamente dependiendo del estado actual del cajero.

* **Contexto**: La clase ATM (el objeto que cambia de comportamiento) mantiene una referencia al objeto de estado actual (ej: currentState).
* **Estado (Interfaz)**: Una interfaz común (ATMState) con métodos para las acciones del usuario (ej: handlePinEntry(), handleWithdraw()).
* **Estados Concretos**: Clases como CardInsertedState, IdleState, etc. Cada una implementa los métodos de la interfaz de manera diferente y, crucialmente, maneja la transición al siguiente estado.

Cuando el usuario ingresa su PIN, la clase `ATM` delega la acción: `currentState.handlePinEntry()`. El objeto de estado actual decide si el PIN es correcto y si debe cambiar el estado del `ATM` a `SelectingOperationState`

# Cuándo usar
* Cuando un objeto puede cambiar su comportamiento de manera significativa en función de su **estado interno**, y este estado es complejo.
* Cuando tienes **grandes estructuras condicionales** (`switch` o `if/else`) que dependen del estado actual para seleccionar el comportamiento.
* Cuando el código específico del estado es grande y necesita ser **organizado de forma independiente.**

## Contestar la siguiente pregunta
* ¿Tiene mi objeto un comportamiento que cambia drásticamente en función de su estado interno, y necesito organizar la lógica de cada estado en clases separadas?
  * Por ejemplo:
    * Semaforos: El comportamiento de la luz (rojo, amarillo, verde) cambia en función de su estado actual.
    * Juegos: Un personaje de un videojuego se comporta de forma distinta (correr, atacar) dependiendo de si está en el estado Saltando, EnTierra o Muerto.

## Ejemplos en la vida real
* Máquinas expendedoras: Cambian su comportamiento según si tienen stock, si se ha insertado dinero, etc.
* Reproductores multimedia: Cambian su comportamiento según si están en estado de reproducción, pausa o detenido.
* Editores de texto: Cambian su comportamiento según si están en modo de edición, selección o visualización.
* Sistemas de autenticación: Cambian su comportamiento según si el usuario está autenticado, en proceso de autenticación o no autenticado.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];