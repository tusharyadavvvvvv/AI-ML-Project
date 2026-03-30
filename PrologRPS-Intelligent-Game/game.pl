% game.pl - FIXED INPUT - WORKS FOR ALL VARIATIONS

valid_full("rock"). valid_full("paper"). valid_full("scissors").
valid_full("Rock"). valid_full("Paper"). valid_full("Scissors").
valid_full("ROCK"). valid_full("PAPER"). valid_full("SCISSORS").

valid_short("r"). valid_short("p"). valid_short("s").
valid_short("R"). valid_short("P"). valid_short("S").

% Convert to standard atom
normalize_move(Input, rock)     :- member(Input, ["rock","Rock","ROCK","r","R"]).
normalize_move(Input, paper)    :- member(Input, ["paper","Paper","PAPER","p","P"]).
normalize_move(Input, scissors) :- member(Input, ["scissors","scissor","Scissors","Scissor","SCISSORS","SCISSOR","s","S"]).

beats(rock, scissors).
beats(scissors, paper).
beats(paper, rock).

winner(Player, Comp) :-
    beats(Player, Comp), !, write('YOU WIN!\n').
winner(Player, Comp) :-
    beats(Comp, Player), !, write('COMPUTER WINS!\n').
winner(_, _), write('DRAW!\n').

% Classic round
play_round :-
    write('Your move (rock/paper/scissors or r/p/s): '),
    flush_output,
    read_line_to_string(user_input, RawInput),
    string_lower(RawInput, Input),
    ( normalize_move(Input, PlayerMove) ->
        random_member(CompMove, [rock, paper, scissors]),
        format('You: ~w | Computer: ~w\n', [PlayerMove, CompMove]),
        winner(PlayerMove, CompMove),
        record_player_move(PlayerMove)
    ;
        write('Invalid input! Try again.\n'), fail
    ).
