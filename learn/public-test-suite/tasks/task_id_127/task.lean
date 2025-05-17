-- Implementation
def multiply (a : Int) (b : Int) : Int :=
  -- << CODE START >>
  a * b
  -- << CODE END >>


-- Theorem: The result should be the product of the two input integers
def multiply_spec (a : Int) (b : Int) (result : Int) : Prop :=
  -- << SPEC START >>
  result = a * b
  -- << SPEC END >>
