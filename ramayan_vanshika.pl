male(ram).
male(lakshman).
male(bharat).
male(shatrughn).
male(dasharath).
male(ravan).
male(kumbhkaran).
male(indrajeet).
male(sugriv).
male(vibhishan).
male(hanuman).

female(sita).
female(kaushalya).
female(kaikeyi).
female(sumitra).
female(tara).   % sugriv ki patni

% family tree
% father
father(dasharath, ram).
father(dasharath, bharat).
father(dasharath, lakshman).
father(dasharath, shatrughn).
father(ravan, indrajeet).
father(ravan, kumbhkaran).
father(janak, sita).

%mother
mother(kaushalya, ram).
mother(kaikeyi, bharat).
mother(sumitra, lakshman).
mother(sumitra, shatrughn).
mother(janaki, sita).

%spouce
spouse(ram, sita).
spouse(sita, ram).
spouse(sugriv, tara).
spouse(tara, sugriv).

%brother
brother(lakshman, ram).
brother(bharat, ram).
brother(shatrughn, ram).
brother(indrajeet, kumbhkaran).
brother(ravan, vibhishan).

% ------------------------
% locations
% ------------------------
location(ayodhya).
location(lanka).
location(kishkindha).
location(sarayu).
location(forest).

% ------------------------
% titles / rulers
% ------------------------
king(dasharath, ayodhya).
king(ravan, lanka).
king(sugriv, kishkindha).

% ------------------------
% major events
% ------------------------

% exile(Person, From, To)
exile(ram, ayodhya, forest).
exile(lakshman, ayodhya, forest).
exile(sita, ayodhya, forest).

% abduction and rescue
abducted(sita, from(forest), by(ravan)).
rescued(sita, by(ram)).

% important battles and deaths
killed(ravan, by(ram)).
killed(kumbhkaran, by(ram)).
killed(indrajeet, by(lakshman)).

% alliances and enmity
ally(ram, hanuman).
ally(ram, sugriv).
ally(ram, vibhishan).

enemy(ram, ravan).
enemy(ravan, ram).

defected(vibhishan, from(ravan), to(ram)).

% weapons used in battle
used_weapon(ram, brahmastra).
used_weapon(indrajeet, nagastra).
used_weapon(hanuman, gada).

% derived rules

% parent relation
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

% sibling rule
sibling(X, Y) :- parent(P, X), parent(P, Y), X \= Y.

% ancestor rule
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% spouse symmetry
married(X, Y) :- spouse(X, Y).
married(X, Y) :- spouse(Y, X).

% ally and enemy symmetry
allied_with(X, Y) :- ally(X, Y).
allied_with(X, Y) :- ally(Y, X).

enemy_of(X, Y) :- enemy(X, Y).
enemy_of(X, Y) :- enemy(Y, X).
