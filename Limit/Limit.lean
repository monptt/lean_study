/- 極限 -/
import Mathlib.Data.Real.Basic

/-- 極限の定義 -/
def Limit (a : ℝ) (b : ℝ) : Prop :=
  ∀ ε : ℝ, ε > 0 -> ∃ N : ℕ, ∀ n : ℕ, n > N -> |a - b| < ε

/-- 関数の極限 -/
def LimitFunc (f : ℝ → ℝ) (x : ℝ) (x0 : ℝ) (L : ℝ) : Prop :=
  ∀ ε : ℝ, ε > 0 -> ∃ δ : ℝ, |x - x0| < δ → |f x - L| < ε

/-- 極限の記法 -/
notation a "→" b => Limit a b
