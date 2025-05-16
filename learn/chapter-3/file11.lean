variable (p q r : Prop)

-- commutativity of ∧
example : p ∧ ¬q → ¬(p → q) := by
  intro h
  intro hpq
  cases h with
  | intro hp hq =>
    apply hq
    apply hpq
    exact hp
