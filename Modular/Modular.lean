/- 整数のmod関連 -/

/-- 記法の定義 -/
notation a "≡" b "mod" n => (a % n) = (b % n)

/-- 整除の記法 -/
notation a "|" b => ∃ k : Int, a * k = b

/-- 合同関係の性質 -/
theorem modEq_refl (a : Int) (n : Int) : a ≡ a mod n := by
  rfl

theorem modEq_symm (a : Int) (b : Int) (n : Int) : (a ≡ b mod n) -> (b ≡ a mod n) := by
  intro h
  rw [h]

theorem modEq_trans (a : Int) (b : Int) (c : Int) (n : Int) : (a ≡ b mod n) -> (b ≡ c mod n) -> (a ≡ c mod n) := by
  intro h1 h2
  rw [h1, h2]
