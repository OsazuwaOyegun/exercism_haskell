import gleam/list

pub type NestedList(a) {
  Null
  Value(a)
  List(List(NestedList(a)))
}

pub fn flatten(lst: NestedList(a)) -> List(a) {
  flatten_src(lst, [])
}

fn flatten_src(lst: NestedList(a), acc) -> List(a) {
  case lst {
    Null -> acc
    Value(a) -> list.append(acc, [a])
    List([]) -> acc
    List([hd, ..tl]) -> flatten_src(List(tl), flatten_src(hd, acc))
  }
}
