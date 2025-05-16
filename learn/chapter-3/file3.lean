variable (p q r : Prop)

-- commutativity of ∧
example : (p ∨ q) ∨ r ↔ p ∨ (q ∨ r) := by
  apply Iff.intro
  -- forward direction
  . intro h
    apply Or.elim h
    -- case p ∨ q
    . intro hpq
      apply Or.elim hpq
      -- case p
      . intro hp
        apply Or.inl
        assumption
      -- case q
      . intro hq
        apply Or.inr
        apply Or.inl
        assumption
    -- case r
    . intro hr
      apply Or.inr
      apply Or.inr
      assumption
  -- backward direction
  . intro h
    apply Or.elim h
    -- case p
    . intro hp
      apply Or.inl
      apply Or.inl
      assumption
    -- case q ∨ r
    . intro hqr
      apply Or.elim hqr
      -- case q
      . intro hq
        apply Or.inl
        apply Or.inr
        assumption
      -- case r
      . intro hr
        apply Or.inr
        assumption
