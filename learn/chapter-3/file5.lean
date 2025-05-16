variable (p q r : Prop)

-- commutativity of ∧
example :  p ∨ (q ∧ r) ↔ (p ∨ q) ∧ (p ∨ r) := by
  apply Iff.intro
    -- forward direction
  . intro h
    apply And.intro
    . apply Or.elim h
      . intro hp
        apply Or.inl
        exact hp
      . intro hqr
        apply Or.inr
        apply And.left hqr
    . apply Or.elim h
      . intro hp
        apply Or.inl
        exact hp
      . intro hqr
        apply Or.inr
        apply And.right hqr
    -- backward direction
  . intro h
    cases h with
    | intro hpq hpr =>
      cases hpq with
      | inl hp =>
        apply Or.inl
        exact hp
      | inr hq =>
        cases hpr with
        | inl hp =>
          apply Or.inl
          exact hp
        | inr hr =>
          apply Or.inr
          apply And.intro
          . exact hq
          . exact hr
