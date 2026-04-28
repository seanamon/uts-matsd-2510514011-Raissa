% =====================================================
% UTS Matematika Sains Data — Semester Genap 2025/2026
% Soal 1 — Eksplorasi Data Penjualan Toko
% ---------------------------------------------------
% Nama  : Raissa Ariys Antya
% NIM   : 2510514011
% Parameter: N=11, a=1, b=1, K=3, theta0=11, alpha=0.002
% Tanggal: 2026-04-28
% =====================================================

clc; clear; close all;

% Parameter personalisasi
N = 11;
a = 1;
b = 1;
K = 3;

% Hitung data D1 s.d. D7
for i = 1:7
    D(i) = 20 + (K*i) + mod(a*i,7) - mod(b*i,5);
end

disp('Data Penjualan:')
disp(D)

% Statistik
mean_D   = mean(D)
median_D = median(D)
mode_D   = mode(D)
range_D  = range(D)
std_D    = std(D,1)

% Diagram batang
figure;
bar(D)
hold on
yline(mean(D),'r','LineWidth',2)

xlabel('Toko')
ylabel('Penjualan (Juta Rupiah)')
title('Penjualan 7 Toko - NIM 2510514011')
grid on


disp('time stamp');
disp(datetime('now', 'format', 'default'));
saveas(gcf,'fig_s1_barchart.png')
