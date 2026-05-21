/- 数列 -/
import Mathlib.Data.Real.Basic

/-- 数列という型を定義 -/
def Sequence := ℕ -> ℝ

/-- 初項a, 公差dの等差数列 -/
def ArithmeticSequence (a : ℝ) (d : ℝ) : Sequence := fun n => a + d * n

/-- 初項a, 公比rの等比数列 -/
def GeometricSequence (a : ℝ) (r : ℝ) : Sequence := fun n => a * r^n
