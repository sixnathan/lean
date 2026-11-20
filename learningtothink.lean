variable (p : Prop)

example (n : Nat) (hn : 0 < n) :
    Nat.gcd ( n^ 17 + 19 ) ((n + 1) ^ 17 + 9) = 1 := by sorry 
variable (k g n  : Nat) 

example (∃ k , m = 2k) (∃g ∃n, m + n = 2g) : 2 | n :=    

variable (m n : Nat) 

example (h1 : ∃ k, m = 2 * k ) (h2 : ∃ g, m + n = 2 * g) : 2 ∣ n := by  
  obtain ⟨k, hk⟩  := h1 
  obtain ⟨g, hg⟩ := h2 
  refine ⟨g - k, ?_⟩ 
  omega 

variable (p q r s : Prop) 

example (h1 : p → q) (h2 : q → r) (hp : p) : r := 
  have hq := h1 hp 
  have hr := h2 hq 
  hr 

example (h1 : p → q) (h2 : q → r) (hp : p) : r := 
  suffices hq : q from h2 hq 
  suffices hpp : p from h1 hpp 
  hp 


example (h1 : p → q) (h2 : q → r) (hp : p) : p ∧ r := 
 suffices hr : r from And.intro hp hr  
 suffices hq : q from h2 hq 
 suffices hpp : p from h1 hpp 
 hp 



