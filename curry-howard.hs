-- Types represent propositions
type Nat = Integer

-- Different proofs/implementations of the same type
-- Proof 1: Addition
plusProof :: Nat -> Nat -> Nat
plusProof x y = x + y

-- Proof 2: Multiplication 
multProof :: Nat -> Nat -> Nat
multProof x y = x * y

-- Test that both are valid inhabitants/proofs
test :: IO ()
test = do
    print $ plusProof 3 4  -- 7
    print $ multProof 3 4  -- 12
    
-- Verify type inhabited twice
verifyInhabitants :: Bool
verifyInhabitants = 
    (plusProof 2 3 /= multProof 2 3) &&  -- Different results
    (plusProof 2 3 :: Nat) > 0 &&        -- Valid naturals
    (multProof 2 3 :: Nat) > 0
