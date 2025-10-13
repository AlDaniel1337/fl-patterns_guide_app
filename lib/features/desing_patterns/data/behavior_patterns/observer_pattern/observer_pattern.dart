import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import './steps/steps.index.dart';

DesingPattern observerPattern = DesingPattern(
  name: "Observer",
  smallDescription: "Permite a un objeto notificar cambios a otros objetos sin acoplarse a ellos.",
  description: _descriptionPattern,
  whereToUse: _whenToUse,
  exampleSteps: _steps,
  imageUrl: "assets/patterns/14_Observer/observer-mini.png",
);


String _descriptionPattern = """
# Propósito
$_description \n
![](assets/patterns/14_Observer/observer.png)

## Pros
$_advantages \n
## Contras
$_disadvantages \n
""";

String _description = """
El patrón de diseño **Observer** (Observador) es un patrón de comportamiento que define una **dependencia uno-a-muchos entre objetos**, de forma que cuando un objeto (el Sujeto o Subject) cambia de estado, todos sus dependientes (los Observadores u Observers) son notificados y actualizados automáticamente. 
Esto promueve un acoplamiento débil entre el sujeto y sus observadores.
""";

String _advantages = """
* **Acoplamiento Débil**: El Sujeto solo conoce la interfaz genérica del Observador, no sus clases concretas. Puede notificar a cualquier objeto que implemente la interfaz del Observador.
* **Consistencia del Estado**: Garantiza la coherencia entre los objetos relacionados, ya que todos se actualizan automáticamente tras un cambio en el Sujeto.
* **Extensibilidad**: Puedes añadir nuevos Observadores sin tener que modificar el código del Sujeto.
""";

String _disadvantages = """
* **Orden de Notificación**: El Sujeto no tiene control sobre el orden en que los Observadores reciben la notificación, lo que puede ser problemático si los observadores tienen dependencias entre sí.
* **Sobrecarga de Actualización**: Si hay un gran número de Observadores y la tasa de cambio del Sujeto es alta, el coste de la notificación y actualización puede ser significativo.
* **Dependencias Circulares**: Es posible que las actualizaciones creen un ciclo de notificaciones si la lógica de un Observador desencadena un nuevo cambio en el Sujeto.
""";



String _whenToUse = """
# Aplicabilidad
Imagina que estás construyendo una aplicación para una **bolsa de valores** donde el precio de una acción (`Stock`) debe mostrarse en varios gráficos, tablas y mensajes de texto simultáneamente.

* Sujeto (Observable): La clase Stock tiene el método notifyObservers() y una lista de suscriptores.
* Observador (Interfaz): Una interfaz común (Observer) con un método como update(stockPrice).
* Observadores Concretos: Clases como ChartDisplay, TableDisplay y SMSSender, cada una de las cuales se suscribe al objeto Stock.

Cuando el precio del stock cambia (`stock.setPrice(101.50)`), el objeto `Stock` llama a `notifyObservers()`, y automáticamente todos los elementos suscritos se actualizan con el nuevo precio, cada uno a su manera.

# Cuándo usar
* Cuando un cambio en el estado de un objeto debe **desencadenar cambios en otros objetos**, y no sabes (o no quieres saber) cuántos objetos ni cuáles son.
* Cuando deseas que la **dependencia entre objetos sea dinámica** y se pueda establecer en tiempo de ejecución (los observadores pueden suscribirse y desuscribirse libremente).
* En sistemas basados en **eventos o GUI** (Interfaz Gráfica de Usuario), donde un evento de usuario (el Sujeto) debe actualizar varios componentes de la pantalla (los Observadores).

## Contestar la siguiente pregunta
* ¿Necesito que un objeto (el Sujeto) notifique y actualice automáticamente a un conjunto desconocido de otros objetos (Observadores) cada vez que su estado cambia?
  * Por ejemplo:
    * Publicación de Noticias: Un objeto `NewsAgency` (Sujeto) notifica a todos los `Subscribers` (Observadores) cuando se publica una nueva historia.
    * Registro de Clics: Un `Button` (Sujeto) notifica a múltiples listeners (Observadores) cuando se hace clic en él.

## Ejemplos en la vida real
* Sistemas de Suscripción: Servicios como RSS o notificaciones push, donde los usuarios (Observadores) se suscriben a canales de noticias (Sujeto) y reciben actualizaciones automáticamente.
* Interfaces Gráficas de Usuario (GUI): Componentes visuales que necesitan actualizarse en respuesta a eventos de usuario o cambios en datos subyacentes.
* Sistemas de Monitoreo: Aplicaciones que monitorean el estado de sistemas o dispositivos y notifican a los administradores o sistemas de alerta cuando ocurren cambios significativos.
""";


List<String> _steps = [
  hypotheticalExample, step1, step2, step3, step4, explanation
];