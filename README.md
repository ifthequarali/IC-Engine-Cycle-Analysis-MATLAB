# IC Engine Cycle Analysis (MATLAB)
# Thermodynamic Analysis of Otto, Diesel & Dual Gas Cycles (MATLAB)

## Overview
A MATLAB numerical simulation evaluating thermodynamic performance parameters of internal combustion engine cycles (Otto, Diesel, Dual).

## Key Calculations & Formulas
- **Compression Ratio ($r_c$)**: $r_c = \frac{V_1}{V_2} = \frac{V_s + V_c}{V_c}$
- **Otto Cycle Thermal Efficiency ($\eta_{otto}$)**: 
  $$\eta_{otto} = 1 - \frac{1}{r_c^{\gamma - 1}}$$
- **Diesel Cycle Thermal Efficiency ($\eta_{diesel}$)**: 
  $$\eta_{diesel} = 1 - \frac{1}{r_c^{\gamma - 1}} \left[ \frac{r_c^\gamma - 1}{\gamma (r_{cut} - 1)} \right]$$
- **Mean Effective Pressure (MEP)**: $MEP = \frac{W_{net}}{V_s}$

## Performance Metrics Log
```text
--- THERMODYNAMIC ANALYSIS RESULTS ---
Otto Cycle Efficiency  : 60.19%
Diesel Cycle Efficiency: 53.20%
Otto Net Work Output   : 412.85 kJ/kg
Otto MEP               : 525.68 kPa
