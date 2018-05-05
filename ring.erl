-module(ring).
-compile([export_all]).
start(Num) ->
  start_proc(Num, self()).

start_proc(0, Pid) ->
  Pid ! ok;

start_proc(Num, Pid) ->
  NPid = spawn(ring, start_proc, [Num -1, Pid]),
  NPid ! ok,
  receive
    ok -> ok
  end.

% Usage
% c(ring).
% timer:tc(ring, start, [100000]).