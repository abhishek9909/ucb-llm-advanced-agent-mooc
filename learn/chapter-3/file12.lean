variable (p q r : Prop)

-- commutativity of ∧
example : ¬p → (p → q) := by
  intro hnp hp
  apply False.elim
  apply hnp
  exact hp
