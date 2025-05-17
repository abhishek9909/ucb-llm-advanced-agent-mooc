-- Implementation
def ident (x : Nat) : Nat :=
  -- << CODE START >>
  x
  -- << CODE END >>


def ident_spec (x : Nat) (result: Nat) : Prop :=
  -- << SPEC START >>
  result = x
  -- << SPEC END >>
