String hypotheticalExample = """
### Ejemplo hipotético:
Imagina que tenemos una aplicación que necesita **consultar una base de datos muy pesada y de acceso restringido**. Establecer una conexión directa a esta base de datos cada vez que un usuario quiere hacer una consulta es costoso en términos de rendimiento y arriesgado en términos de seguridad.

Por ejemplo, no todos los usuarios deberían poder ejecutar cualquier consulta. Un usuario "invitado" solo debería poder leer datos, mientras que un "administrador" podría tener permisos para modificar y eliminar registros.
![](assets/patterns/12_Proxy/problem-es.png)

En lugar de darle a la aplicación un acceso directo a la base de datos, usamos un Proxy. **Este proxy es un objeto que actúa como un intermediario o un vigilante**. Tiene la misma apariencia que el objeto de base de datos real (implementa la misma interfaz), pero controla el acceso a él.

El flujo sería el siguiente:

* La aplicación, en lugar de conectarse directamente a la base de datos, le hace la solicitud al objeto `Proxy`.
* El `Proxy` primero verifica los permisos del usuario que está haciendo la solicitud. Si un usuario "invitado" intenta ejecutar una consulta para borrar datos, el `Proxy` le denegará el acceso sin siquiera molestar a la base de datos real.
* Si la solicitud es válida, el `Proxy` establece la conexión con la base de datos real (solo si es necesario), le pasa la consulta y luego devuelve los resultados a la aplicación.
![](assets/patterns/12_Proxy/solution-es.png)

De esta manera, el `Proxy` actúa como una capa de seguridad y control. Puede gestionar tareas como la validación de permisos, el registro de consultas (auditoría) o incluso el almacenamiento en caché de resultados frecuentes, protegiendo al objeto real (la conexión a la base de datos) de un uso indebido o ineficiente.

""";