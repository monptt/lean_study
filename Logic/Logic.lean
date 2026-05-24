/- 論理 -/

example (P Q : Prop) : (¬ P ∨ Q) → (P → Q) := by
  intro h
  intro hp
  cases h with
  | inl hp =>
    contradiction
  | inr hq =>
    exact hq


example (P Q : Prop) : ¬ (P ∨ Q) ↔ ¬ P ∧ ¬ Q := by
  constructor
  case mp =>
    intro h
    constructor
    · case left =>
      intro hp
      apply h
      left
      exact hp
    · case right =>
      intro hq
      apply h
      right
      exact hq

  case mpr =>
    intro h
    intro hpq
    cases hpq with
    | inl hp =>
      exact h.left hp
    | inr hq =>
      exact h.right hq
