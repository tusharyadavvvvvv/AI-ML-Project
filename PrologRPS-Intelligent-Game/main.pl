% main.pl - Entry point
:- [game].
:- [ai].
:- [db].

start :-
    nl,
    write('========================================\n'),
    write('   PROLOGRPS - INTELLIGENT RPS GAME\n'),
    write('   CSA2001 - CO2 + CO6 PROJECT\n'),
    write('========================================\n\n'),
    write('1. Classic Mode\n'),
    write('2. Intelligent AI Mode (Learns you!)\n'),
    write('Enter 1 or 2: '), flush_output,
    read_line_to_string(user_input, Choice),
    (Choice = "2" -> smart_game ; classic_game).

classic_game :- 
    write('\n=== CLASSIC MODE ===\n\n'),
    repeat,
    play_round,
    nl, write('Play again? (y/n): '), flush_output,
    read_line_to_string(user_input, Ans),
    \+ (Ans = "" ; member(Ans,["y","yes","Y","Yes"])), !.

smart_game :-
    write('\n=== INTELLIGENT AI MODE ACTIVATED ===\n'),
    write('AI is learning your pattern...\n\n'),
    repeat,
    play_smart_round,
    nl, write('Play again? (y/n): '), flush_output,
    read_line_to_string(user_input, Ans),
    \+ (Ans = "" ; member(Ans,["y","yes","Y","Yes"])), !.
