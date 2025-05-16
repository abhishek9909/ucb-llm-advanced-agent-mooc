variable (p q r : Prop)

-- commutativity of ∧
example : ((p ∨ q) → r) ↔ (p → r) ∧ (q → r) := by
  apply Iff.intro
  . intro h
    apply And.intro
    . intro hp
      apply h
      apply Or.inl
      exact hp
    . intro hq
      apply h
      apply Or.inr
      exact hq
  . intro h
    intro hpq
    apply Or.elim hpq
    . exact And.left h
    . exact And.right h
