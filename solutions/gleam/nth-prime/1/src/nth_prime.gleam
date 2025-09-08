import gleam/float
import gleam/int
import gleam/list
import gleam/result

/// create list of prime numbers where length = number
/// return first i.e. last number added into the list

pub fn prime(number: Int) -> Result(Int, Nil) {
  find_nth_prime(number, 2, [])
}

fn find_nth_prime(number, candidate, lst) -> Result(Int, Nil) {
  case list.length(lst) == number {
    True -> list.first(lst)
    _ ->
      case is_prime(candidate) {
        True -> find_nth_prime(number, candidate + 1, [candidate, ..lst])
        False -> find_nth_prime(number, candidate + 1, lst)
      }
  }
}

pub fn is_prime(n: Int) -> Bool {
  case n < 2 {
    True -> False
    _ ->
      case n == 2 {
        True -> True
        _ -> {
          let limit = n |> int.square_root |> result.unwrap(1.0) |> float.round
          check_divisors(n, 2, limit)
        }
      }
  }
}

fn check_divisors(n: Int, i: Int, limit: Int) -> Bool {
  case i > limit {
    True -> True
    False -> {
      case n % i {
        0 -> False
        _ -> check_divisors(n, i + 1, limit)
      }
    }
  }
}