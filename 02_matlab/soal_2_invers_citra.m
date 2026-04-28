% =====================================================
% UTS Matematika Sains Data
% Soal 2 — Matriks, Invers, dan Citra
% Nama : Raissa Ariya Antya
% NIM  : 2510514011
% =====================================================

clc; clear; close all;

% Matriks A
A = [3 1 2;
     2 4 1;
     1 2 5];

disp('Matriks A =')
disp(A)

% Determinan
detA = det(A)

% Invers
invA = inv(A)

% Verifikasi
cek = A*invA

% Visualisasi matriks sebagai citra
figure;
imagesc(A)
colorbar
title('Visualisasi Matriks A')
xlabel('Kolom')
ylabel('Baris')

disp('time stamp');
disp(datetime('now', 'format', 'default'));
saveas(gcf,'fig_s2_citra.png')