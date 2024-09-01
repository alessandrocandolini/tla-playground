---------------------------- MODULE ConcurrentCounter ----------------------------
EXTENDS Naturals

VARIABLES counter

Init == 
    counter = 0

Next == 
    \/ /\ counter' = counter + 1 /\ ( \E p \in {"P1", "P2"} : p = "P1" \/ p = "P2" )
    \/ /\ counter' = counter + 1 /\ ( \E p \in {"P1", "P2"} : p = "P2" \/ p = "P1" )

Invariant == 
    counter <= 1

Spec == 
    Init /\ [][Next]_<<counter>>

=========================================================================
