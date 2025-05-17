-- Implementation
def isGreater (n : Int) (a : Array Int) : Bool :=
  -- << CODE START >>
  let rec loop (i : Nat) : Bool :=
    if i < a.size then
      if n > a[i]! then loop (i + 1) else false
    else true
  loop 0
  -- << CODE END >>


-- Theorem: If the result is true, then n is greater than all elements in the array; If the result is false, then there exists at least one element in the array that is greater than or equal to n
def isGreater_spec (n : Int) (a : Array Int) (result : Bool) : Prop :=
  -- << SPEC START >>
  (∀ i, i < a.size → n > a[i]!) ↔ result
  -- << SPEC END >>
