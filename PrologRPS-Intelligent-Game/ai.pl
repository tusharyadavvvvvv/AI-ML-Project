% ai.pl - Intelligent opponent

% Override random move if we know player's favorite
random_member(X, _) :-
    most_frequent_player_move(Fav),
    beats(X, Fav), !.
random_member(X, List) :- random_member(X, List).

play_smart_round :-
    write('Your move: '),
    flush_output,
    read_line_to_string(user_input, Rc),
    string_lower(Rc, Input),
    ( normalize_move(Input, PlayerMove) ->
        random_member(AIMove, _),
        format('You: ~w | AI: ~w\n', [PlayerMove, AIMove]),
        winner(PlayerMove, AIMove),
        record_player_move(PlayerMove)
    ;
        write('Invalid! Try again.\n'), fail
    ).
