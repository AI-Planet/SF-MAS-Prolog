
% =====================================================
% Agents
% =====================================================

agent(alice).
agent(bob).
agent(drone).


% =====================================================
% Actions
% =====================================================

action(observe).
action(move).
action(open_door).
action(rescue).
action(wait).


% =====================================================
% States
% =====================================================

state(s0).
state(s1).
state(s2).


% =====================================================
% Transitions
% =====================================================

transition(s0, move(alice), s1).

transition(s1, open_door(alice), s2).

transition(s2, rescue(alice, bob), s2).

transition(s2, observe(drone), s2).

transition(s0, wait(alice), s0).

transition(s1, wait(alice), s1).

transition(s2, wait(alice), s2).


% =====================================================
% Capabilities
% =====================================================

can(alice, open_door).
can(alice, rescue).

can(bob, move).
can(bob, rescue).

can(drone, observe).
can(drone, move).



