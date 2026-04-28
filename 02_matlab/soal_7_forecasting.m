% =====================================================
% UTS Matematika Sains Data
% Soal 7 — Forecasting Penjualan
% Nama : Raissa Ariya Antya
% NIM  : 2510514011
% =====================================================

clc; clear; close all;

% Parameter
K = 3;
a = 1;

% Data penjualan 12 bulan
for n = 1:12
    S(n) = 50 + (K*n) + ((-1)^n)*(a+1);
end

t = 1:12;

disp('Data S =')
disp(S)

%% Regresi Linear
p = polyfit(t,S,1);

m = p(1);
c = p(2);

disp('Slope =')
disp(m)

disp('Intercept =')
disp(c)

trend = polyval(p,t);

%% Prediksi 6 bulan ke depan
t2 = 13:18;
pred = polyval(p,t2);

disp('Prediksi S13-S18 =')
disp(pred)

%% MAE
MAE = mean(abs(S-trend));

disp('MAE =')
disp(MAE)

%% Plot
figure;
plot(t,S,'bo','MarkerFaceColor','b')
hold on

plot(1:18,polyval(p,1:18),'r--','LineWidth',1.5)

plot(t2,pred,'g^','MarkerFaceColor','g')

xlabel('Bulan')
ylabel('Penjualan (Juta Rupiah)')
title('Forecast Penjualan')
legend('Data Historis','Trend Linear','Prediksi')
grid on

saveas(gcf,'fig_s7_forecasting.png')
disp('time stamp');
disp(datetime('now', 'format', 'default'));