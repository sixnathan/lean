-- lean provides the λ keyword to create a fucntion from an aexpression 
#check λ (x : Nat) => x + 5 

#check fun (x :Nat) => x + 5 

#check fun x => x + 5 
-- interestingly it infers that it is of the naturals rather than something else: 

#check fun x => x + 5 
-- how exactly is it inferred? this si a puzzle to me 
#check λ x => x + 5 


#eval (λ x : Nat => x + 5) 10 

#eval (fun x : Nat => x + 5) 10 

#check fun x : Nat => fun y : Bool => if not y then x + 1 else x + 2 
#check fun x y => if not y then x + 1 else x + 2 
#check λ x => λ y => if not y then x + 1 else x + 2
#check λ (x : Nat) => λ (y : Bool) => if not y then x + 1 else x + 2 
#check λ x : Rat => λ y : Bool => if not y then x + 1 else x + 2 
-- ok so does this does make some sense: it is possible to do this hm 

#check fun x y => if not y then x + 1 else x + 2 

def f (n : Nat) : String := toString n  
#check f 
-- is this thing not of type : hmmm how does thist hing work, hmmm what dose thsit hing mean hmmm def f (n : Nat) : String := toString n 

def gh : Nat → String := toString 

#eval gh 1234 
#eval f 1234 


def newgh : Nat → String := toString  

#eval newgh 122 

def thingy (n : Nat) : String := toString n 
-- this is in the form: 

def g (s : String) : Bool := s.length > 0 
def ting : String → Bool := fun s => s.length > 0  


#check fun x : Nat => x  
#check fun x : Nat => x 
#check fun x : Nat => true 
#check fun x : Nat => false 
#check λ x : Nat => g ( f x ) 
#check λ x => g ( f x ) 

-- what does this mean? 
-- the expression λ x : Nat => x is the identity, i.e it returns itself: the function applied to anything is it self.
-- the funciton λ x => true is the fucntion that always returns true to anything, and then the function that is 
-- λ x => g ( f x ) is the function that is defined as the composite of the other two functions g and f 

def newfunction : Nat → Bool := λ x => g ( f x ) 
-- this makes sense, as the g function takes in a nat and returns a nat, and the f function takes in a nat and returns a bool  
-- it is possible to infer the types of everything : this is pretty nice



def funny : String → Bool := λ x => if x = "hi my name is" then true else false 

#eval funny "hi my name is" 
#check funny 

#check fun (x :Nat) => x + 5 

def what : Nat → Nat := λ x => x + x 

#eval what 1 

#check fun x => x + 4 

#eval (λ x : Nat => x + 5 ) 10 

#check (λ x => x) 
-- i wonder what this means hmmm how does this work. 

-- the general form of the lambda expression is λ (x : α ) => t, where the variable x is a 'bound variable' (what does this mean) it is something that is a placeholder: it scope does not extend beyond the expression in t. the constant in b has nothing to do with the constant in b declared in another expression: ah this is the meaning of a bound variable. 

-- the renaming of bound variables is called alpha equivalent: two things are considered the same if they are the same arrangement of bounda variables within their expression (if that makes sense) 


#check (λ x : Nat => x) 1  
#check (λ x : Nat => x)
#check (λ x : Nat => true) 1  
-- this last one is one that takes in any natural number and returns true. 

def foobar (n: Nat) : String := toString n 

#check foobar 

#check (fun x : Nat => true) 1 

-- so this thing can take in functions, types etc, and it can return lots and lots of things. hmmm

-- for now, notice that these temrs are an important part of type theory:  

    -- they support the notion of normalisation: two terms that reduce to the same value are called definitionally equal : they are considered the same by the lean type checker, and lean does its best to support this: 

    -- lean is a complete programming language. 
      -- it has a compiler that generates a binary executable and an interactive interpreter, and it can use #eval to execute expressions and it is the preferred way of testing functions 



