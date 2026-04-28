% =====================================================
% UTS Matematika Sains Data
% Soal 4 — Bilangan Kompleks
% Nama : Raissa Ariya Antya
% NIM  : 2510514011
% =====================================================

clc; clear; close all;

% Parameter
a = 1;
b = 1;
theta0 = 11;   % derajat

% Bilangan kompleks
z1 = (a+2) + (b+1)*1i;
z2 = (b+1) - (a+2)*1i;

disp('z1 ='); disp(z1)
disp('z2 ='); disp(z2)

% Bentuk polar
r1 = abs(z1);
t1 = angle(z1);

r2 = abs(z2);
t2 = angle(z2);

disp('abs(z1) ='); disp(r1)
disp('arg(z1) rad ='); disp(t1)

disp('abs(z2) ='); disp(r2)
disp('arg(z2) rad ='); disp(t2)

% Operasi
jumlah = z1 + z2
kali   = z1 * z2
bagi   = z1 / z2
selisih = abs(z1-z2)

% De Moivre
pangkat4 = z1^4

% Akar pangkat tiga
theta = deg2rad(theta0);

for k = 0:2
    akar(k+1) = 2*(cos((theta+2*pi*k)/3) + 1i*sin((theta+2*pi*k)/3));
end

disp('Akar kubik =')
disp(akar)

% Plot akar kubik
figure;
compass(akar)
title('Plot Akar Kubik Kompleks')

saveas(gcf,'fig_s4_akar_kompleks.png')

disp('time stamp');
disp(datetime('now', 'format', 'default'));