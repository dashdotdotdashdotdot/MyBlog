---
title: Why Did Verizon's Market Cap fall by 17% in Q3 2023?
author: Douglas Dwyer
date: '2023-10-08'
categories:
  - Case Studies
slug: why-did-verizon-s-market-cap-17-in-q3-2023
---
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />

Between June 30, 2023, and October 6, 2023, the Market Cap of Verizon fell from 156.35B to 129.69B (17%) and the Enterprise Value fell from 332B to 302.55B (9%).  During the same time period yields on a 10-year treasury increased from 3.85% to 4.73%.  An increase in the risk-free rate should translate into an increase in the WACC and a lower Market  Value of VZ, but by how much? 

The Enterprise Value of VZ at the end of Q2 can be explained with the assumptions of:

- 23.58% operating margin (forever)
- a flat WACC of 8.73 (the 10yr treasury at end of Q2 plus 400bps) 
- revenue growth of 1% for next five years and then expands to 2% by year 10 and stabilizes
- Asset Turnover of 38% (forever)
- A tax rate of 18.9%.

The sum of the present discount value of the cash flows implied by these trajectories is \$332B. With the same assumptions, but a 7.85% WACC (the 10yr treasury today plus 400bps today) the enterprise value falls to $291B (-12.3%).

Therefore, the drop in enterprise value that VZ has experienced in the past quarter is somewhat less than we would expect based given an 88bps increase in the WACC and using a DCF approach.


# Projections with End Q2 2023 WACC

<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Year </th>
   <th style="text-align:left;"> Revenue </th>
   <th style="text-align:left;"> Assets </th>
   <th style="text-align:left;"> EBIT </th>
   <th style="text-align:left;"> EBITafterTax </th>
   <th style="text-align:left;"> ROI </th>
   <th style="text-align:left;"> Reinvest </th>
   <th style="text-align:left;"> FCFF </th>
   <th style="text-align:right;"> Discounted </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 2023 </td>
   <td style="text-align:left;"> 138 </td>
   <td style="text-align:left;"> 381 </td>
   <td style="text-align:left;"> 32.4 </td>
   <td style="text-align:left;"> 26.3 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.49 </td>
   <td style="text-align:left;"> 22.8 </td>
   <td style="text-align:right;"> 21.2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2023 </td>
   <td style="text-align:left;"> 138 </td>
   <td style="text-align:left;"> 381 </td>
   <td style="text-align:left;"> 32.4 </td>
   <td style="text-align:left;"> 26.3 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.49 </td>
   <td style="text-align:left;"> 22.8 </td>
   <td style="text-align:right;"> 21.2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2024 </td>
   <td style="text-align:left;"> 139 </td>
   <td style="text-align:left;"> 384 </td>
   <td style="text-align:left;"> 32.7 </td>
   <td style="text-align:left;"> 26.6 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.19 </td>
   <td style="text-align:left;"> 23.4 </td>
   <td style="text-align:right;"> 20.1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2025 </td>
   <td style="text-align:left;"> 140 </td>
   <td style="text-align:left;"> 387 </td>
   <td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> 26.8 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.04 </td>
   <td style="text-align:left;"> 23.7 </td>
   <td style="text-align:right;"> 18.9 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2026 </td>
   <td style="text-align:left;"> 141 </td>
   <td style="text-align:left;"> 391 </td>
   <td style="text-align:left;"> 33.3 </td>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.14 </td>
   <td style="text-align:left;"> 23.9 </td>
   <td style="text-align:right;"> 17.6 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2027 </td>
   <td style="text-align:left;"> 143 </td>
   <td style="text-align:left;"> 394 </td>
   <td style="text-align:left;"> 33.6 </td>
   <td style="text-align:left;"> 27.3 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.62 </td>
   <td style="text-align:left;"> 23.7 </td>
   <td style="text-align:right;"> 16.2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2028 </td>
   <td style="text-align:left;"> 144 </td>
   <td style="text-align:left;"> 399 </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> 27.6 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 4.37 </td>
   <td style="text-align:left;"> 23.2 </td>
   <td style="text-align:right;"> 14.8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2029 </td>
   <td style="text-align:left;"> 146 </td>
   <td style="text-align:left;"> 404 </td>
   <td style="text-align:left;"> 34.5 </td>
   <td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 5.21 </td>
   <td style="text-align:left;"> 22.8 </td>
   <td style="text-align:right;"> 13.4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2030 </td>
   <td style="text-align:left;"> 149 </td>
   <td style="text-align:left;"> 410 </td>
   <td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> 28.4 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 6.14 </td>
   <td style="text-align:left;"> 22.3 </td>
   <td style="text-align:right;"> 12.2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2031 </td>
   <td style="text-align:left;"> 151 </td>
   <td style="text-align:left;"> 417 </td>
   <td style="text-align:left;"> 35.7 </td>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 7.12 </td>
   <td style="text-align:left;"> 21.8 </td>
   <td style="text-align:right;"> 11.1 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2032 </td>
   <td style="text-align:left;"> 154 </td>
   <td style="text-align:left;"> 425 </td>
   <td style="text-align:left;"> 36.4 </td>
   <td style="text-align:left;"> 29.5 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 7.85 </td>
   <td style="text-align:left;"> 21.7 </td>
   <td style="text-align:right;"> 10.2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2033 </td>
   <td style="text-align:left;"> 157 </td>
   <td style="text-align:left;"> 433 </td>
   <td style="text-align:left;"> 37.1 </td>
   <td style="text-align:left;"> 30.1 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 8.17 </td>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:right;"> 176.0 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:right;"> 332.0 </td>
  </tr>
</tbody>
</table>
In the table above, the sum of discounted cash flows is the number in the lower right corner.  It is the sum of the column above.  The last number in this column is the terminal value. The Terminal Value ($176B) is computed with a Gordon Growth Model, which involves multiplying the terminal cash flow by 17.09 and then discounting it by 47%. Equivalently, , it involves multiplying Terminal Cash Flow by 8.029. Terminal Cash Flow is $22B. Terminal WACC is 7.85%, and Terminal Growth is 2%. Therefore, the terminal multiplier is the reciprocal of 5.85% (which equals 17.09). 

# Projections with October 8, 2023 WACC

<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Year </th>
   <th style="text-align:left;"> Revenue </th>
   <th style="text-align:left;"> Assets </th>
   <th style="text-align:left;"> EBIT </th>
   <th style="text-align:left;"> EBITafterTax </th>
   <th style="text-align:left;"> ROI </th>
   <th style="text-align:left;"> Reinvest </th>
   <th style="text-align:left;"> FCFF </th>
   <th style="text-align:right;"> Discounted </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 2023 </td>
   <td style="text-align:left;"> 138 </td>
   <td style="text-align:left;"> 381 </td>
   <td style="text-align:left;"> 32.4 </td>
   <td style="text-align:left;"> 26.3 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.49 </td>
   <td style="text-align:left;"> 22.8 </td>
   <td style="text-align:right;"> 21.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2023 </td>
   <td style="text-align:left;"> 138 </td>
   <td style="text-align:left;"> 381 </td>
   <td style="text-align:left;"> 32.4 </td>
   <td style="text-align:left;"> 26.3 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.49 </td>
   <td style="text-align:left;"> 22.8 </td>
   <td style="text-align:right;"> 21.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2024 </td>
   <td style="text-align:left;"> 139 </td>
   <td style="text-align:left;"> 384 </td>
   <td style="text-align:left;"> 32.7 </td>
   <td style="text-align:left;"> 26.6 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.19 </td>
   <td style="text-align:left;"> 23.4 </td>
   <td style="text-align:right;"> 19.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2025 </td>
   <td style="text-align:left;"> 140 </td>
   <td style="text-align:left;"> 387 </td>
   <td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> 26.8 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.04 </td>
   <td style="text-align:left;"> 23.7 </td>
   <td style="text-align:right;"> 18.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2026 </td>
   <td style="text-align:left;"> 141 </td>
   <td style="text-align:left;"> 391 </td>
   <td style="text-align:left;"> 33.3 </td>
   <td style="text-align:left;"> 27 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.14 </td>
   <td style="text-align:left;"> 23.9 </td>
   <td style="text-align:right;"> 17.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2027 </td>
   <td style="text-align:left;"> 143 </td>
   <td style="text-align:left;"> 394 </td>
   <td style="text-align:left;"> 33.6 </td>
   <td style="text-align:left;"> 27.3 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 3.62 </td>
   <td style="text-align:left;"> 23.7 </td>
   <td style="text-align:right;"> 15.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2028 </td>
   <td style="text-align:left;"> 144 </td>
   <td style="text-align:left;"> 399 </td>
   <td style="text-align:left;"> 34 </td>
   <td style="text-align:left;"> 27.6 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 4.37 </td>
   <td style="text-align:left;"> 23.2 </td>
   <td style="text-align:right;"> 14.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2029 </td>
   <td style="text-align:left;"> 146 </td>
   <td style="text-align:left;"> 404 </td>
   <td style="text-align:left;"> 34.5 </td>
   <td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 5.21 </td>
   <td style="text-align:left;"> 22.8 </td>
   <td style="text-align:right;"> 12.70 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2030 </td>
   <td style="text-align:left;"> 149 </td>
   <td style="text-align:left;"> 410 </td>
   <td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> 28.4 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 6.14 </td>
   <td style="text-align:left;"> 22.3 </td>
   <td style="text-align:right;"> 11.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2031 </td>
   <td style="text-align:left;"> 151 </td>
   <td style="text-align:left;"> 417 </td>
   <td style="text-align:left;"> 35.7 </td>
   <td style="text-align:left;"> 29 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 7.12 </td>
   <td style="text-align:left;"> 21.8 </td>
   <td style="text-align:right;"> 10.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2032 </td>
   <td style="text-align:left;"> 154 </td>
   <td style="text-align:left;"> 425 </td>
   <td style="text-align:left;"> 36.4 </td>
   <td style="text-align:left;"> 29.5 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 7.85 </td>
   <td style="text-align:left;"> 21.7 </td>
   <td style="text-align:right;"> 9.39 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2033 </td>
   <td style="text-align:left;"> 157 </td>
   <td style="text-align:left;"> 433 </td>
   <td style="text-align:left;"> 37.1 </td>
   <td style="text-align:left;"> 30.1 </td>
   <td style="text-align:left;"> 7.38 </td>
   <td style="text-align:left;"> 8.17 </td>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:right;"> 141.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:left;">  </td>
   <td style="text-align:right;"> 291.00 </td>
  </tr>
</tbody>
</table>
In the table above, the sum of discounted cash flows is the number in the lower right corner.  It is the sum of the column above.  The last number in this column is the terminal value. The Terminal Value ($141B) is computed with a Gordon Growth Model, which involves multiplying the terminal cash flow by 14.86 and then discounting it by 43.3%. Equivalently, , it involves multiplying Terminal Cash Flow by 6.434. Terminal Cash Flow is $22B. Terminal WACC is 8.73%, and Terminal Growth is 2%. Therefore, the terminal multiplier is the reciprocal of 6.73% (which equals 14.86). 


