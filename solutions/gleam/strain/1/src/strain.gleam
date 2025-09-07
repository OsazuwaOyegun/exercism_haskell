import gleam/list

pub fn keep(list: List(t), predicate: fn(t) -> Bool) -> List(t) {
  helper(list, predicate, True, [])
}

pub fn discard(list: List(t), predicate: fn(t) -> Bool) -> List(t) {
  helper(list, predicate, False, [])
}

fn helper(list, predicate, keeper, acc) -> List(t) {
  case list, predicate, keeper, acc {
    [], _, _, acc -> acc |> list.reverse
    [head, ..rest], predicate, keeper, acc ->
      helper(rest, predicate, keeper, case predicate(head), keeper {
        True, True -> [head, ..acc]    // for keep
        False, False -> [head, ..acc]  // for discard
        _, _ -> acc
      })
  }
}