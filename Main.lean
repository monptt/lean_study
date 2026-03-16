import LeanStudy

def main : IO Unit :=
  IO.println s!"Hello, {hello}!"

def successor (n : Nat) : Nat := n + 1

theorem tautology (A : Prop) : A -> A := by
  intro h
  exact h
