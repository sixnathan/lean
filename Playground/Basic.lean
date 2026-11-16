def hello := "world"

/-! ## 1. Programs: define functions and evaluate them -/

def double (n : Nat) : Nat := 2 * n

#eval double 21          -- infoview shows: 42
#check double            -- infoview shows: double (n : Nat) : Nat

def sumTo : Nat → Nat
  | 0     => 0
  | n + 1 => (n + 1) + sumTo n

#eval sumTo 10           -- 55

/-! ## 2. Proofs: put your cursor inside a `by` block to watch the goal change -/

-- Checked by pure computation
example : double 21 = 42 := rfl

-- A real proof by induction. Move the cursor line by line and watch the infoview.
theorem double_add (a b : Nat) : double (a + b) = double a + double b := by
  unfold double
  omega

theorem sumTo_formula (n : Nat) : 2 * sumTo n = n * (n + 1) := by
  induction n with
  | zero => rfl
  | succ k ih =>
    simp only [sumTo]
    -- goal here: 2 * (k + 1 + sumTo k) = (k + 1) * (k + 1 + 1)
    rw [Nat.mul_add, ih]
    grind
