import gleam/result
import gleam/dict
import gleam/list

const list_of_colors = [
    #(Black, 0),
    #(Brown, 1),
    #(Red, 2),
    #(Orange, 3),
    #(Yellow, 4),
    #(Green, 5),
    #(Blue, 6),
    #(Violet, 7),
    #(Grey, 8),
    #(White, 9)
  ]

pub type Color {
  Black
  Brown
  Red
  Orange
  Yellow
  Green
  Blue
  Violet
  Grey
  White
}

pub fn code(color: Color) -> Int {
  list_of_colors
  |> dict.from_list()
  |> dict.get(color)
  |> result.unwrap(-1)
}

pub fn colors() -> List(Color) {
  list_of_colors
  |> list.map(fn(x){x.0})
}
