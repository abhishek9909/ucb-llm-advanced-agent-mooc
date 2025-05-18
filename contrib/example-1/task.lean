def countNumbersWithUniqueDigits (n : Nat) : Nat :=
  -- << CODE START >>
  if n = 0  then 1
  else if n = 1 then 10
  else if n > 8 then default
  else
    let rec loop (iter : List Nat) (current : Nat) (total : Nat) : Nat :=
      match iter with
      | [] => total
      | x :: xs =>
        let newCurrent := current * (10 - (x - 1))
        let newTotal := total + current
        loop xs newCurrent newTotal

    let iter := (List.range (n + 1)).drop 2
    let current := 9
    let total := 10
    let ans := loop iter current total
    ans
  -- << CODE END >>


def countNumbersWithUniqueDigits_spec (n : Nat) (result: Nat) : Prop :=
  -- << SPEC START >>
  if n > 8 then
    default
  else
  let upperBound := 10 ^ n
  let rec hasUniqueDigits (x : Nat) : Bool :=
    if x < 10 then true
    else
      let rec checkDigits (x : Nat) (seen : List Nat) : Bool :=
        if x = 0 then true
        else
          let digit := x % 10
          if digit ∈ seen then false
          else checkDigits (x / 10) (digit :: seen)
      checkDigits x []
  let rec loop (iter: List Nat) (count: Nat) : Nat :=
    match iter with
    | [] => count
    | x :: xs =>
      if hasUniqueDigits x then
        loop xs (count + 1)
      else
        loop xs count

  let iter := List.range upperBound
  let count := 0
  let ans := loop iter count
  result = ans
  -- << SPEC END >>
