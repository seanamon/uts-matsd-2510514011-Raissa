% =====================================================
% UTS Matematika Sains Data
% Soal 5 — Limit dan Kekontinuan
% Nama : Raissa Ariya Antya
% NIM  : 2510514011
% =====================================================

clc; clear; close all;

% Parameter
a = 1;
b = 1;
K = 3;

syms x n p q

%% 5.1 Limit
L1 = limit((x^2-K^2)/(x-K), x, K)
L2 = limit((sqrt(x+(K+1)^2)-(K+1))/x, x, 0)
L3 = limit(((a+2)*x^3 + b*x + 7)/(x^3 - x + K), x, inf)

%% 5.2 Limit Trigonometri
L4 = limit((sin((a+1)*x)*tan((b+2)*x))/x^2, x, 0)

%% 5.3 Limit Tak Hingga
R = (100*n + K)/(n + (a+b+1));
L5 = limit(R, n, inf)

L6 = limit(sqrt(n^2+K*n)-sqrt(n^2+b*n), n, inf)

%% 5.4 Kontinuan Piecewise
p = 2*K;
q = K*(2-a);

disp('Nilai p =')
disp(p)

disp('Nilai q =')
disp(q)

%% Plot fungsi kontinu
fplot((x^2-K^2)/(x-K), [0 K-0.01], 'b')
hold on
plot(K,p,'ro','MarkerFaceColor','r')
fplot(a*x+q,[K+0.01 2*K],'g')

xline(K,'k--')

xlabel('x')
ylabel('C(x)')
title('Grafik Fungsi Piecewise Kontinu')
legend('x<K','x=K','x>K')
grid on

saveas(gcf,'fig_s5_piecewise.png')
disp('time stamp');
disp(datetime('now', 'format', 'default'));