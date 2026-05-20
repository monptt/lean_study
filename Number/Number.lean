/- 数論 -/

/-- 自然数の定義 -/
inductive MyNat : Type
| zero : MyNat
| succ (n : MyNat) : MyNat

/-- 加法の定義 -/
def add (a : MyNat) (b : MyNat) : MyNat :=
  match a with
  | MyNat.zero => b
  | MyNat.succ a => MyNat.succ (add a b)

/-- 加法の記法 -/
notation a "+" b => add a b
