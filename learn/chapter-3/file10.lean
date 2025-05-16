variable (p q r : Prop)

-- commutativity of ∧
example : ¬(p ∧ ¬p) := by
  simp
