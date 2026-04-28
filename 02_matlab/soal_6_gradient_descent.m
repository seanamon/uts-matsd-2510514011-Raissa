% =====================================================
% UTS Matematika Sains Data
% Soal 6 — Gradient Descent Profit
% Nama : Raissa Ariya Antya
% NIM  : 2510514011
% =====================================================

clc; clear; close all;

% Parameter
a = 1;
b = 1;
K = 3;
alpha = 0.002;

% Fungsi profit
pi  = @(x) -((a+1)*x.^3) + ((b+5)*K*x.^2) + 100*x - (K^2*10);
dpi = @(x) -(3*(a+1)*x.^2) + 2*(b+5)*K*x + 100;

% Gradient Descent
iter = 500;
x = zeros(1,iter+1);
y = zeros(1,iter+1);

x(1) = 1;

for k = 1:iter
    y(k) = pi(x(k));
    x(k+1) = x(k) + alpha*dpi(x(k));
end

y(iter+1)=pi(x(iter+1));

% Solusi analitik
syms z
sol = solve(-(3*(a+1)*z^2)+2*(b+5)*K*z+100==0,z);

disp('Titik kritis =')
disp(double(sol))

disp('Titik akhir GD =')
disp(x(end))

disp('Profit akhir =')
disp(y(end))

% Plot konvergensi
figure;
plot(0:iter,y,'LineWidth',1.5)
xlabel('Iterasi')
ylabel('Profit')
title('Konvergensi Gradient Descent')
grid on

saveas(gcf,'fig_s6_konvergensi.png')

% Plot fungsi profit
xx = linspace(-5,15,300);
figure;
plot(xx,pi(xx),'b','LineWidth',1.5)
hold on
plot(1,pi(1),'ro','MarkerFaceColor','r')
plot(x(end),pi(x(end)),'go','MarkerFaceColor','g')

xlabel('x')
ylabel('\pi(x)')
title('Kurva Profit')
legend('Profit','Titik Awal','Titik Akhir')
grid on

saveas(gcf,'fig_s6_profit.png')
disp('time stamp');
disp(datetime('now', 'format', 'default'));