-- Implementation
def minOfThree (a : Int) (b : Int) (c : Int) : Int :=
  -- << CODE START >>
  if a <= b && a <= c then a
  else if b <= a && b <= c then b
  else c
  -- << CODE END >>


-- Theorem: The returned value is the minimum of the three input numbers
def minOfThree_spec (a : Int) (b : Int) (c : Int) (result : Int) : Prop :=
  -- << SPEC START >>
  (result <= a ∧ result <= b ∧ result <= c) ∧
  (result = a ∨ result = b ∨ result = c)
  -- << SPEC END >>
