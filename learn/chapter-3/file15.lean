variable (p q r : Prop)

example : p ∧ False ↔ False := by
  apply Iff.intro
  -- forward direction
  intro h
  exact h.right
  -- backward direction
  intro h
  apply False.elim
  exact h
