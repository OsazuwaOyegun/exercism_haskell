import gleam/list

// TODO: please define the Pizza custom type
pub type Pizza {
  Margherita
  Caprese
  Formaggio
  ExtraSauce(Pizza)
  ExtraToppings(Pizza)
}

pub fn pizza_price(pizza: Pizza) -> Int {
  case pizza {
    Margherita -> 7
    Caprese -> 9
    Formaggio -> 10
    ExtraSauce(p) -> 1 + pizza_price(p)
    ExtraToppings(p) -> 2 + pizza_price(p)
  }
}

pub fn order_price(order: List(Pizza)) -> Int {
  order_price_hlp(order) + pizza_count(order)
}

fn order_price_hlp(order: List(Pizza)) -> Int {
  case order {
    [] -> 0
    [x, ..rest] -> pizza_price(x) + order_price_hlp(rest)
  }
}

fn pizza_count(order) -> Int {
  case list.length(order) {
    1 -> 3
    2 -> 2
    _ -> 0
  }
}
