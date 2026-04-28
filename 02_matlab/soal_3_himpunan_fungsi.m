% =====================================================
% UTS Matematika Sains Data
% Soal 3 — Himpunan dan Fungsi
% Nama : Raissa Ariya Antya
% NIM  : 2510514011
% =====================================================

clc; clear; close all;

% Parameter
N = 11;
a = 1;
b = 1;
K = 3;

% Himpunan
A = [N N+2 N+4 N+7 N+10 N+13 N+15];
B = [N+3 N+5 N+7 N+10 N+12 N+18];
C = [N+1 N+7 N+10 N+11 N+17 N+20];

disp('A ='); disp(A)
disp('B ='); disp(B)
disp('C ='); disp(C)

% Operasi himpunan
gabung = union(A,B);
irisan = intersect(intersect(A,B),C);
xorAB = setxor(A,B);
AB = union(A,B);
hasil = setdiff(intersect(AB,C),[]);

disp('A union B ='); disp(gabung)
disp('A irisan B irisan C ='); disp(irisan)
disp('A xor B ='); disp(xorAB)

% Fungsi
syms x

f = K*x + (a+b);
g = x^2/(b+1) + a;

fog = simplify(subs(f,x,g));
gof = simplify(subs(g,x,f));

disp('f(x) ='); disp(f)
disp('g(x) ='); disp(g)
disp('f(g(x)) ='); disp(fog)
disp('g(f(x)) ='); disp(gof)

disp('time stamp');
disp(datetime('now', 'format', 'default'));