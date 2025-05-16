variable (α : Type) (p q : α → Prop)

example : (∀ x, p x ∧ q x) ↔ (∀ x, p x) ∧ (∀ x, q x) := by
  apply Iff.intro
  -- forward direction.
  . intro h
    apply And.intro
    . intro x
      apply And.left (h x)
    . intro x
      apply And.right (h x)
  -- backward direction.
  intro hpq hα
  apply And.intro
  exact hpq.left hα
  exact hpq.right hα
