variable (α : Type) (p q : α → Prop)

example : (∀ x, p x) ∨ (∀ x, q x) → ∀ x, p x ∨ q x := by
  intro hpq hα
  cases hpq with
  | inl hp => apply Or.inl; apply hp
  | inr hq => apply Or.inr; apply hq
