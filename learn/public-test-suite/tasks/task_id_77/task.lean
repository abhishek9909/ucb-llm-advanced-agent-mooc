-- Implementation
def isDivisibleBy11 (n : Int) : Bool :=
  -- << CODE START >>
  if n % 11 = 0 then true else false
  -- << CODE END >>


-- Theorem: The result is true if n is divisible by 11
def isDivisibleBy11_spec (n : Int) (result : Bool) : Prop :=
  -- << SPEC START >>
  n % 11 = 0 ↔ result
  -- << SPEC END >>
