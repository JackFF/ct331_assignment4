%Definitions for isElementInList(El, List)
isElementInList(Element, [Element | _]).

isElementInList(Element, [_ | Tail]) :- isElementInList(Element, Tail).
%Definitions for reverseList(List, ReversedList)
reverseList([], []).

reverseList(List, ReversedList) :- [Head | Tail] = List,
    reverseList(Tail, ReverseTail),
    mergeLists(ReverseTail, [Head], ReversedList).

%insertElementIntoListEnd(El, List, NewList)

insertElementIntoListEnd(El, List, NewList) :- mergeLists(List, [El], NewList).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List, List).

mergeLists(List1, List2, Merged) :- [Head | Tail1] = List1, [Head | Tail2] = Merged, mergeLists(Tail1, List2, Tail2).
