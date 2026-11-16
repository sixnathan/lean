#check let y := 3; y * y 
#eval let y := 3; y * y 
def y := 3 
#eval y * y  

#check 3 * 3
#eval 3 * 3 

-- let a := t1; replacing all occurences of a in t2 by t1, i.e t2 is defined in terms of a, and a is defined in terms of t1. but we can use this simplification to make it easier to write out. 

#check let y := 2; y * y
#eval let y := 2; y * y 

def twice (x : Nat) := 
  let y := x + x; 
  y * y 

#eval twice 3 

#check let y := 2 + 2; let z := y + y; z + z 
#eval let y := 2 + 2; let z := y + y; z + z 
-- this is four plus four plus four plus four which is sixteen nice 

#check let y := 2 + 2; 
let z := y * y; 
z + z 

#eval let y := 2 + 2; 
let z := y * y; 
z + z 

def t (x : Nat) : Nat := 
  let y := x + x 
  y * y 

-- what is this doing: is the (x : Nat) the input type and the : Nat the return type? is that how it works?  


--- the meaning of let is similar to the meaning of fun 
  -- the two are not the same 
    -- in the first expression: all a in t2 are an abbreviation for t1 
      -- in the second expression a is a variable and the expression fun a => t2 has to make sense independently of the value of a 
        -- the let construct is a stronger means of abbreviation
          -- there are expressions of the form let a := t1; t2 that cannot be expressed by fun a => t2 t1. thsi is not 

def foo := let a := Nat; fun x : a => x + 2 

def bar := (fun a => fun x : a => x + 2) Nat 

def bar := let a := Nat; fun x : a => x + 2 

-- we have declared that a is a Nat before we have started to evaluate it, whereas in the other case we did not, we did it via passing in the Nat function hmmmmmm 




