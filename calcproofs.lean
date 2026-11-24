-- a calculational proof is 
    -- a chain of intermediate results that are 
        -- composed by basic principles such as transitivity of equality. 

            -- a calculational proof starts with the keywords calc 


variable (a b c d e : Nat) 

theorem T 
  (h1 : a = b) 
  (h2 : b = c + 1) 
  (h3 : c = d)
  (h4 : e = 1 +d) : 
 a = e := 
  calc 
  a = b := h1 
  _ = c + 1 := h2 
  _ = d + 1 := congrArg Nat.succ h3 
  _ = 1 + d := Nat.add_comm d 1  
  _ = e := Eq.symm h4 

theorem T 
  (h1 : a = b) 
  (h2 : b = c + 1) 
  (h3 : c = d)
  (h4 : e = 1 +d) : 
 a = e := 
calc 
a = b := by rw [h1] 
_ = c + 1 := by rw [h2] 
-- ok i realise how thsi thing works, instead of wrign oute hte proof of the whole thing,you hm


-- rw uses an equality to rewrite the goal: reduces the goal to the identity of t = t and uses reflexivity to prove it. 


-- hmm it seems that simp is strictly better than rw. i wonder why that is. s:i
