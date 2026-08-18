% Thermodynamic Analysis of Gas Cycles
% =========================================================================
% Thermodynamic Analysis of Otto, Diesel, and Dual Gas Cycles
% Author: Ifthequar Ali | IIT Madras
% =========================================================================

clear; clc; close all;

gamma = 1.4; Cp = 1.005; Cv = 0.718;
P1 = 101.325; T1 = 300; T3 = 1800;
bore = 0.1; stroke = 0.1; rc = 10; rcut = 1.5;

Vs = (pi/4) * (bore^2) * stroke;
Vc = Vs / (rc - 1);
V1 = Vs + Vc; V2 = Vc;

P2_otto = P1 * (rc^gamma);
T2_otto = T1 * (rc^(gamma-1));
P3_otto = P2_otto * (T3 / T2_otto);
P4_otto = P3_otto * ((1/rc)^gamma);
T4_otto = T3 * ((1/rc)^(gamma-1));

eta_otto = (1 - (1 / (rc^(gamma-1)))) * 100;
Wnet_otto = Cv * (T3 - T2_otto) - Cv * (T4_otto - T1);
mep_otto = (Wnet_otto * 1000) / Vs;

T2_diesel = T1 * (rc^(gamma-1));
T3_diesel = T2_diesel * rcut;
eta_diesel = (1 - (1/(rc^(gamma-1))) * ((rcut^gamma - 1)/(gamma*(rcut - 1)))) * 100;

fprintf('--- THERMODYNAMIC ANALYSIS RESULTS ---\n');
fprintf('Otto Cycle Efficiency  : %.2f%%\n', eta_otto);
fprintf('Diesel Cycle Efficiency: %.2f%%\n', eta_diesel);
fprintf('Otto Net Work Output   : %.2f kJ/kg\n', Wnet_otto);
fprintf('Otto MEP               : %.2f kPa\n', mep_otto);
