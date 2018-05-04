-module(recursive_accumulators).
-compile([export_all]).
average(X) -> average(X,0,0).

average([H|T], Length, Sum) ->
  average(T, Length+1, Sum + H);

average([], Length, Sum) ->
  Sum/Length.