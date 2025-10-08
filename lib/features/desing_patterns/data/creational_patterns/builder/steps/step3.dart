String step3 = """
### Uso del patrón.
```dart
void main() {

  // Pizza con masa delgada, queso y pepperoni
  Pizza pizza = PizzaBuilder()
    .setMasa("delgada")
    .addQueso()
    .addPepperoni()
    .build();
  
  // Pizza con masa gruesa y queso
  Pizza pizzaWithCheese = PizzaBuilder()
    .setMasa("gruesa")
    .addQueso()
    .build();

  print(pizza); 
  print(pizzaWithCheese);
}
```
""";
