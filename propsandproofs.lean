-- introduce a new type : Prop, to represent propositions: introduce constructions to build propositions from others . 

#check And  
-- i mena liek 
#check true ∧ false    
#check true ∨ false 
#check And true false 
#check Or 
#check true ∨ false  
#check Not true 
#eval Not true 
#check ¬ true 
#eval true → false 
#eval false → true 
#eval true → true 
#check true → false 

variable (p q r : Prop) 
#check p ∧ q 
#check true ∧ q 
#check p ∧ q ∨ r   
#check (p ∧ q) → (q ∧ p) 

#check (p ∧ q) → (q ∧ p) 
def thingy (p q : Prop) := (p ∧ q) → (q ∧ p) 
#eval thingy true true 
#check 1 + 1 = 2 
#check (p ∧ q) → (q ∧ p) 

-- strategy for proving things about objects in type theory: 
    -- introduce new type Prop to represent propostions 
        -- introduce new propositions from old ones 


#check And -- this takes in a b which are of type prop and returns something of type prop   

#check Or -- does the same as above 
#check Not  -- takes in something of type Prop and returns type prop 
#check → -- takes in two things of type prop and returns something of type prop 
-- i realise that this is not an offical thing in lean (Implies does not exist) 

-- then introduce, for each element p : Prop, another type of Proof p (p : Proof) for the proofs of p. an axiom would be something of that type. 

-- how would this work: it would take in something of type Prop and return a Type 

axiom commut (p q : Prop) : Proof ((q ∧ p) → (p ∧ q))
-- ok so in this new abstract thing, we could define an axiom by the fact that it takes in propositions, and returns something of type Proof, and the Proof would be applied to something mhmmmmmm how does this hting 


variable (p q : Prop) 
-- we would also need rules to build new proofs from old ones: for things of propositional logic, we have the rule modus ponens: 
    -- modus ponens is of the form 
axiom modus (p q : Prop) : Proof (p → q) → Proof p → Proof q 
-- what does this mean: this takes in two propositions, and the nwe define the proof such that if we pass hmm mi have no diea how thsi thing worls 

-- assume p, and we have proven q, then we could cancel the hypothesis and obtain a proof of p → q 


axiom implies (p q : Prop) : (Proof p → Proof q) → Proof (p → q) 
-- i dont really understand this part: i wonder if i need to in order to understand lean? i mean if it is not going to be used until later, then what is the point of learning it at all? 

-- this approach  
    -- a reasonable way of building assertions with proofs 
        -- determining an expression t is a proof of assertion p woudl be checking that t has type Proof p 

        -- however, it is possible to simplify further: 
            -- we dont need to Proof, and that would avoid us conflating Proof p (t) with p itself (from what i understand we are attempting to move from prop p to proof p 
/- t == Proof p is the same as 
checking that t has type Proof p 

avoid writing proof 
this would prevent conflating Proof p with p itself 

when we have p : Proof 
we can interpret p as a type 
the type of its proofs 
  what does that mean 
t : p 
t is a proof of p 

when we have p : Prop we interpret p as a type 
then t : p is the assertion that t is a proof of p 

once this is done: the rules for implication show that we can pass back and form between p → q and Implies p and q. 

once done : 
ruels for implication show that 
implicaiton between prop p and q corresponds to having a fucntion that takes any elemtn of p to an element of q. 

therefore: introduction of implies 

im not sure that i rigorously understand waht the message of this is. 

the rules for implication in a proof system for natural deductions 
  correspond to the rules governing curry howard isomorphism
    proposition as types paradigm 

if we have something of 
-/ 
variable (p q : Prop) 
#check p → q 
-- then the implication of the two is a proposition 

/- ways to think about propositions as types 

proposition p 
  represents a sort of datatype 
    a specification of the type of data that constitutes a proof 

a proof of p is then an object t : p of the right type 
t is the object and then p is the type 

to each prop p we have a type that is empty if p is false and has a single element * if p is true 

the type p is inhabited if the p is true, and uninhabited if p is false 

constructing an element t : p tells us that p is true 
inhabitant of p is the fact taht p is true 
the fact that p is true shows that q is true: 

#check p → q 


if p : Prop is any proposition 

t1 t2 : p are definitionally equal (these two are objects that prove that p is true, they are both inhabitants that show that p is true) 

proof irrelevance (i wonder why it is called this: is it because it does not matter what they are they just how that it is tre) 

it means: 
  even though we treat t : p as ordinary objects, they carry no information beyond the fact that p is true. 
we have two ways to think about propositions as types: 

form the constructive point of view, proofs are abstract objects 
  denoted by suitable expressions in type theory 

in contrast: 
  the expressions themselves do not denote anything interesting 
    the fact that we can write them down and check that they are well typed ensures that the propositions in question is true. 
    the expressions themselves are the proofs. 

    i dont really understand this whatsoever. 


to formally express an assertion in dependent type theory 
  we need to exhibit a term p : Prop 
    to prove it, we need to exhibit a term t : p 

    lean's task is to help us construct a term t and to verify that it is well formed and has the correct type 


-/ 
set_option linter.unusedVariables false 

variable {p : Prop}
variable {q : Prop}

theorem t : p → q → p := fun hp : p => fun hq : q => hp 
/- this has type signature p q p and is the 

variable {
