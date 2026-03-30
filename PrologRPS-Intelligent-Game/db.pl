% db.pl - Dynamic database
:- dynamic most_frequent_player_move/1.
most_frequent_player_move(rock).  % initial

record_player_move(Move) :-
    retractall(most_frequent_player_move(_)),
    asserta(most_frequent_player_move(Move)).
