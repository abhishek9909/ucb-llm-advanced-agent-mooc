variable (p q r : Prop)

example : (p → q) → (¬q → ¬p) := by
  intro hpq hnq hp
  apply hnq
  apply hpq
  exact hp
