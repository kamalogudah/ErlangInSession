-module(demo_concurrent).
-compile([export_all]).
echo() ->
  receive
    {Pid, Msg} ->
      Pid ! Msg,
    echo()
  end.

% Running
% $ erl
% c(demo_concurrent).
% Pid = spawn(demo_concurrent, echo, []).
% Pid ! {self(), hello}.  => {<0.61.0>,hello}
%  receive X -> X end.  =>hello
% killing a process exit(Pid, kill).
