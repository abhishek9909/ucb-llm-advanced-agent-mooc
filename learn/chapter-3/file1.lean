variable (p q r : Prop)

-- commutativity of ∧
example : p ∨ q ↔ q ∨ p := by
  apply Iff.intro
  -- forward direction
  . intro h
    apply Or.elim h
    -- case p
    . intro hp
      apply Or.inr
      assumption
    -- case q
    . intro hq
      apply Or.inl
      assumption
  -- backward direction
  . intro h
    apply Or.elim h
    -- case p
    . intro hp
      apply Or.inr
      assumption
    -- case q
    . intro hq
      apply Or.inl
      assumption
