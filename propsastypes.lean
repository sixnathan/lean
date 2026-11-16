set_option linter.unusedVariables false 
def function : Nat → Nat → Nat := fun x y => x 

/- so this linter just does not highlight when a variable is not used-/ 

variable {p : Prop} 
variable {q : Prop} 

theorem foo (hp : p) : p := hp 

theorem t : p → q → p := fun hp : p => fun hq : q => hp  
-- i dont understand what this is doing: the theorem command introduces a new theorem: this one 

#print t  

theorem othertheorem (hp : p) (hq : q) : p := hp 
-- so we are listing the inputtupes or something on the left 
#print othertheorem
#print t 

axiom hp : p -- is this declaring that we have a proof of p that is hp? 
theorem t1 (hp : p) (hq : q) : p := hp 
#print t1 
theorem t2 : q → p := t1 hp 
-- what are we attempting to prove: for theorem t2, q implies p and we are doing this by passing in the the proof for h pinto t1 hmm is that true? 
axiom unsound : False 
  
  
/- so the idea in lean is that: 
we represent the assumptions that we make as things of a particular type. 
consider type Prop
something of type prop is an assertion: either it is true or false. 
so consider the statement 'one plus one equals five' this is an assertion. it is of type prop. call it onefive
 (onefive : Prop) 

to represent that it is true is to say that there exists of type onefive, i.e 
(proof : onefive) 

there are many possible proofs, and so to place it into the 'bucket' or type of onefive makes some sense. 

when defining a proof in lean, we can do so as such: 

like defining either a function or a variable etc, we have two ways to represent it: 

theorem [keyword]  (inputone : type) (inputtwo : type ) : (outputtype) := (proof) 
theorem : p → q → p : p := hp  
-/ 
theorem : p → q → p := hp  
-/ 
variable {p : Prop} 
variable {q : Prop} 
theorem thing (hq : q) (hp : p) : p := hp   
-- this is saying that if we assume that there exist something of type p and q, and we set out to prove there there exists something of type p, then we state the example of the proof that we have 
theorem otherhting: p → q → p := λ hp hq => hp 

-- ok this is pretty cool i think that i like this, i wonder what i could build with it. hmm it seems at this point easier to get things wrong than right so i think that i will follow the guide and play aroudn later 

-- just to be clear 


