variable (α : Type) (p q : α → Prop)

example : (∀ x, p x → q x) → (∀ x, p x) → (∀ x, q x) := by
  intro hpq hp hα
  apply hpq
  exact hp hα
