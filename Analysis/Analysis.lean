/- 解析学 -/
import Mathlib

def is_odd_func (f : ℝ → ℝ) : Prop :=
  ∀ x : ℝ, f (-x) = -f x

def is_even_func (f : ℝ → ℝ) : Prop :=
  ∀ x : ℝ, f (-x) = f x
