-- Implementation
def hasOppositeSign (a : Int) (b : Int) : Bool :=
  -- << CODE START >>
  if a < 0 ∧ b > 0 then true
  else if a > 0 ∧ b < 0 then true
  else false
  -- << CODE END >>


-- Theorem: The result is true if a and b have opposite signs
def hasOppositeSign_spec (a : Int) (b : Int) (result: Bool) : Prop :=
  -- << SPEC START >>
  (a < 0 ∧ b > 0) ∨ (a > 0 ∧ b < 0) ↔ result
  -- << SPEC END >>
