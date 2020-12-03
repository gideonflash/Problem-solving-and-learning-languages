-module(three_n_plus_one).

-export([cycleCount/2, cycleMax/1]).

cycleMax(List) ->
    lists:foldl(fun (Curr, Count) ->
                        CycleCount = cycleCount(Curr, 0),
                        case CycleCount of
                            X when X > Count -> X;
                            _ -> Count
                        end
                end,
                0,
                List).

cycleCount(Num, Start) when Num =:= 1 -> Start + 1;
cycleCount(Num, Start) when Num rem 2 =:= 0 ->
    cycleCount(Num div 2, Start + 1);
cycleCount(Num, Start) ->
    cycleCount(Num * 3 + 1, Start + 1).
