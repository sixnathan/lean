def Cat : Rat := 6.7  

#check Nat → Nat 

def modulo : Nat → Nat := λ x => x % 3 
def newmodulo (x : Nat) := x % 3 
#check newmodulo 4 
#eval modulo 4 


#check Nat 
#check Type 3    
#check Type 4 

def square (x : Nat) := x * x 
def doublesquare (f : Nat → Nat) (x : Nat) := f ( f x ) 

#eval doublesquare square 3 

def newcompose (α β γ : Type) (f : α → β ) (g : β → γ) (x : α) := g ( f ( x ) )   

def catcat (x : Nat) := if x % 2 = 0 then true else false  
def catcatcat : Nat → Bool := λ x => if x % 2 == 0 then true else false   

def natnat (y : Bool) := if y = true then "cat" else "catcat" 

#eval newcompose Nat Bool String catcat natnat 0  

def junfang : Bool := true  


#check  Nat × Nat  
#check (Nat, Nat) 
#check (1, 2)

#check Type 
#check Type 1  
#check Type 2 
#check Type 3 
#check Type 4  

def Natural := Nat 
#check Natural 
#check Nat 
def five : Natural := 5
def otherfive : Nat := 5 

-- semireducible: lean will unfold the types when necessary but some of the automated features will leave references to teh name untouched. 


