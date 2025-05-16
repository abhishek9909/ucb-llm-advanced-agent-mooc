variable (p q r : Prop)

example : (¬p ∨ q) → (p → q) := by
intro hnpq hp
cases hnpq with
| inl hnp =>
  apply False.elim
  apply hnp
  exact hp
| inr hq =>
  exact hq
