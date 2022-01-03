------------------------------- MODULE Hello -------------------------------
EXTENDS Naturals

VARIABLE s

Init == s = 1
Next == (s = 1 /\ s' = 2) \/ (s = 2 /\ s' = 3) \/ (s = 3 /\ UNCHANGED s)

Spec == Init /\ [][Next]_s /\ WF_s(Next)

InBounds == [] (s >= 1 /\ s <= 3)
EventuallyTwo == <> (s = 2) 
EventuallyAlwaysThree == <>[] (s = 3)
TwoLeadsToThree == (s = 2) ~> (s = 3)
=============================================================================
\* Modification History
\* Last modified Mon Jan 03 16:31:16 GMT 2022 by alessandrocdepop.com
\* Created Mon Jan 03 15:51:35 GMT 2022 by alessandrocdepop.com


