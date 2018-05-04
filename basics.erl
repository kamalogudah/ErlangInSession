-module(basics).
-compile([export_all]).

area({square, Side}) ->
  Side * Side;
area({circle, Radius}) ->
  3.1416 * Radius * Radius;
area({triangle, A, B, C}) ->
  S = (A + B + C) / 2,
  math:sqrt(S*(S-A)*(S-B)*(S-C));
area(Other) ->
  {error, invalid_object}.
