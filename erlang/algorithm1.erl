-module(algorithm1).
-export([quicksort/1]).
-include_lib("eunit/include/eunit.hrl").

quicksort_test() ->
  ?assertEqual([1,2,3,4], quicksort([3,2,4,1])),
  ?assertEqual([2,3,4,5,6,7], quicksort([4,2,6,3,7,5])),
  ?assertEqual([2,2,5,5,6,6,7], quicksort([5,2,6,2,5,6,7])),
  ?assertEqual([1], quicksort([1])),
  ?assertEqual([], quicksort([])).

quicksort([]) -> [];
quicksort([Pivot|Tail]) ->
  quicksort([X || X <- Tail, X < Pivot]) ++ [Pivot] ++ quicksort([X || X <- Tail, X >= Pivot]).

