-- def used to declare new named objects 

def double (x : Nat) : Nat := 
  x + x 

#check double 


-- double defined as : function that takes in input parameter of x, type Nat, where the result of the call is x + x 
-- it returns type Nat 

#eval double 2 


-- def is named fun 

def newdouble : Nat → Nat := fun x => x + x 

#eval newdouble 3

-- can omit type declarations when lean has enough information to infer it: through looking at the Add operator ( + ) the checker can deduce that the function must be of type Nat → Nat 


def newnewdouble := fun (x : Nat) => x + x  
def newnewnewdouble (x : Nat) := x + x 

#check newnewdouble 
#check newnewnewdouble 

-- general form of a definition is def foo : α := bar where α is the type returned from expression bar, is it not the inputtype? oh wait i misread, this does make some more sense to me now i

def pi := 3.14159

-- the right hand side bar can be any expression not just a λ so def can be used to simply name a value 

-- it can also take multiple input parameters: 

def add ( x y : Nat) := x + y 
#check add 
#eval add 1 2 

def otheradd (x : Nat) (y : Nat) := x + y 
#check otheradd 


#eval add (double 3) 3

-- wow this is pretty cool i like this. 

def greater (x y : Nat) := x > y 

def othergreater : Nat → Nat → Bool := fun x y => x > y 
def newngreater (x y : Nat) := 
  if x > y then true  
  else false  

#check greater 1 2  

#check newngreater 
#check othergreater 
-- i wonder how these are different, what what does this mena hmmm 

def otherotheradd (x : Nat) (y : Nat) := x + y 
#eval otherotheradd 1 2 


-- you are able to define a function that takes another function as input. 


def doublefunction (f : Nat → Nat) (g : Nat → Nat) (x : Nat) := f ( g x )    

#check doublefunction 
#eval doublefunction double double 3

def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ := g ( f x ) 
-- in this funciton: it takes in any two functions as input arguments 
  -- it enforces that that the output of the second function is the input of the first function ( outpout of f is the input of g) and also enforces that α β γ are all of the form Type 


-- compose take a third argument of type α which is used to invoke f and it passes the result of that function into g. the first function returns a type γ so that it is also the return type of the compose function 


-- i wonder if it is possible to do sometihng inferred in this, like if it is possible to infer the types from this rather than specify them 

def square (x : Nat) : Nat := x * x 
#check square 

#eval compose Nat Nat Nat square square 5 

-- this is interesting. hmmmm so square is a general function. i wonder if it is possible to do something like 

def newcompose (α β : Type) (f : α → β) (g : β → α) (x : α) := f ( g ( f ( x ) ) )  
#check newcompose 
#eval newcompose Nat Nat square square 3

-- this is pretty cool i like this 


-- not all names are unfolded in all contextk
