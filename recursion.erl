-module(recursion).
-compile([export_all]).

double([H|T])-> [2*H| double(T)];
double([]) -> [].

member(H, [H|_]) -> true;
member(H, [_|T]) -> member(H,T);
member(_, []) -> false.

% Using Guards

even([H|T]) when H rem 2 == 0 ->
  [H|even(T)];
even([_|T]) ->
  even(T);
even([]) ->
  [].