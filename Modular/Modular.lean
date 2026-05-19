/- 整数のmod関連 -/

/-- mod の定義 -/
def mod_eq (a : Int) (b : Int) (n : Int) : Prop := ∃ k : Int, a = b + n * k

/-- 記法の定義 -/
notation a "≡" b "mod" n => mod_eq a b n

/-- 整除の記法 -/
notation a "|" b => ∃ k : Int, a * k = b

/- 合同関係の性質 -/
/-- 反射律 -/
theorem modEq_refl (a : Int) (n : Int) : a ≡ a mod n := by
  rw [mod_eq]
  exists 0
  simp

/-- 対称律 -/
theorem modEq_symm (a : Int) (b : Int) (n : Int) : (a ≡ b mod n) -> (b ≡ a mod n) := by
  intro h
  rw [mod_eq] at h
  rw [mod_eq]
  sorry



/-- 推移律 -/
theorem modEq_trans (a : Int) (b : Int) (c : Int) (n : Int) : (a ≡ b mod n) -> (b ≡ c mod n) -> (a ≡ c mod n) := by
  intro h1 h2
  sorry
