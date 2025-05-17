-- Implementation
def lastDigit (n : Nat) : Nat :=
  -- << CODE START >>
  n % 10
  -- << CODE END >>


-- Theorem: The returned digit d should be between 0 and 9; d should be the last digit of the input number n
def lastDigit_spec (n : Nat) (result : Nat) : Prop :=
  -- << SPEC START >>
  (0 ≤ result ∧ result < 10) ∧
  (n % 10 = result)
  -- << SPEC END >>
