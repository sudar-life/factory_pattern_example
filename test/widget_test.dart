import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Counter increments smoke test', () async {
    var userSelectedPizza = PizzaType.HamMushroom;
    var orderNumber = "12345";
    Pizza pizza;
    switch (userSelectedPizza) {
      case PizzaType.HamMushroom:
        pizza = HamAndMushroomPizza();
        break;
      case PizzaType.Deluxe:
        pizza = DeluxePizza(orderNumber);
        break;
      case PizzaType.Seafood:
        pizza = SeafoodPizza();
        break;
    }

    print(pizza.getPrice());
  });
}

enum PizzaType { HamMushroom, Deluxe, Seafood }

abstract class Pizza {
  double getPrice();
}

class HamAndMushroomPizza implements Pizza {
  double price = 10.5;
  @override
  double getPrice() {
    return price;
  }
}

class DeluxePizza implements Pizza {
  String orderNumber;
  DeluxePizza(this.orderNumber);
  double price = 5.5;
  @override
  double getPrice() {
    return price;
  }
}

class SeafoodPizza implements Pizza {
  double price = 7.8;
  @override
  double getPrice() {
    return price;
  }
}
