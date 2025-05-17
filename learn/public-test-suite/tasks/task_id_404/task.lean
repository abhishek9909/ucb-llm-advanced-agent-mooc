-- Implementation
def myMin (a : Int) (b : Int) : Int :=
  -- << CODE START >>
  if a <= b then a else b
  -- << CODE END >>

-- Theorem: The minValue is either a or b; The minValue is less than or equal to both a and b
def myMin_spec (a : Int) (b : Int) (result : Int) : Prop :=
  -- << SPEC START >>
  (result ≤ a ∧ result ≤ b) ∧
  (result = a ∨ result = b)
  -- << SPEC END >>
