clear;
clc;

G = tf([2 5 1],[1 2 3]);
C = tf([5,10],[1,10]); 

sys = feedback(G,C,-1)