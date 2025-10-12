String explanation = """
### Explicación rápida:
* `Figura` (Elemento): define el método aceptar() que recibe un visitante.
* `Circulo` y `Rectangulo`: implementan `Figura` y llaman al método correspondiente del visitante.
* `FiguraVisitor`: declara métodos para cada tipo de elemento.
* `RenderVisitor`: implementa el dibujo concreto para cada figura.
* `Cliente (Flutter)`: crea figuras, las recorre y deja que el visitante realice la acción.
""";