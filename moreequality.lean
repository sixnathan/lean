variable (α β : Type) 
variable (a b : α) 
variable (f g : α → β)
variable (h1 : a = b) 
variable (h2 : f = g) 

example : f a = f b := congrArg f h1  
example : g b = g a := congrArg g h1.symm 
example : f b = g a := congr h2 h1.symm
#check congrArg 
-- so it takes as its first argument a function applied to some value, and then as its second argument, an equality between the first argument and some other term, 

-- congrFun takes in some equality between two functions, and then applies it to a value 

-- then congr takes in an equality between functions and values, and then returns a proof of that? is that what it is doing? i think so. .hmmmm 




variable (a b c : Nat) 

example: a + 0 = a := Nat.add_zero a  
example: 0 + a = a := Nat.zero_add a   

example : a * 1 = a := Nat.mul_one a 
example : 1 * a = a := Nat.one_mul a 
example : a + b = b + a := Nat.add_comm a b  
example : b + a = a + b := Nat.add_comm b a     
-- interesting, this does not work 
example : b + a = a + b := Nat.add_comm a b  
example : b + a = a + b := Nat.add_comm a b  
example : a + b = a + b := rfl  
example : a + b = a + b := _         
-- so we need to: 
  -- so the ordering of this is the thing from  

variable (j k  : Nat) 

example : j + k = k + j := Nat.add_comm j k  
example : j + k = k + j := Nat.add_comm k j   
example : 1 + 2 = 2 + 1 := Nat.add_comm 1 2 
example : 2 + 1 = 1 + 2 := Nat.add_comm 1 2  
-- huh how does this thing work: it means that addition is commutative hmmm

example : 2 + 0 = 2 := Nat.add_zero 0     
example : 0 + 0 = 0 := Nat.add_zero 0   

example : a * b = b * a := Nat.mul_comm a b   
example : a * b = b * a := Nat.mul_comm b a    
example : a * b = b * a := (Nat.mul_comm a b).symm   
#check Nat.mul_comm
example : a * b * c = (a * b) * c := Nat.mul_assoc a b c 
example : a * b * c = a * (b * c) := Nat.mul_assoc a b c  

-- wait byt something like 
example : a * b * c = (a * b) * c := rfl   
example : a * b * c = a * (b * c) := rfl   
-- OOOOOOo it default left associates, that makes so much more sense: the associativeity is saying that the orderofoperations matters outside of that. 

-- so it is the case that the multiplication associates to the left by default. 
#check Nat.left_distrib 
#check Nat.right_distrib 
example (x y : Nat) : (x + y) * (x + y) = x * x + x * y + y * x + y * y := 
  have h1 := Nat.left_distrib (x + y) x y
  have h2 := (Nat.right_distrib x y x) ▸ (Nat.right_distrib y y x) ▸ h1 
    
