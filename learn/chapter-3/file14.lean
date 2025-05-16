variable (p q r : Prop)

example : p ∨ False ↔ p := by
  apply Iff.intro
  -- forward direction
  intro h
  cases h with
  | inl hp => exact hp
  | inr hfalse => cases hfalse
  -- backward direction
  intro hp
  apply Or.inl hp
