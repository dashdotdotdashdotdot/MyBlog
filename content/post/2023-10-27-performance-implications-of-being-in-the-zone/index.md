---
title: Performance Implications of Being in the Zone
author: Douglas W. Dwyer
date: '2023-10-27'
slug: performance-implications-of-being-in-the-zone
categories:
  - Methodology
tags: []
---
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />


We have developed a methodology to calculate trajectories of key financial statement line items that imply a trajectory of cash flows whose discounted value is equal to the current value of the company using a specific weighted average cost of capital (WACC). 

This approach allows one to identify companies that are outside the _value zone_.  The _value zone_ is calibrated such that _out of zone_ firms are very unlikely to be purchased by Berkshire Hathaway.  Firms that are "out of zone" are firms that do not have a history of positive operating margin or their current valuations rely on strong assumptions regarding operating margin expansions or revenue growth or both.  Further, firms can be _out of zone_ if their current valuation imply the market expects revenue to decline significantly or margins to contract significanty or both. The boundaries of the _value zone_ are calibrated so that it is very unlikely that Berkshire Hathaway holds a firm out side of the value zone.  As the approach is rule-based, we can apply it to all the firms list in the NSYE, AMEX and NASDAQ exchanges going from 1964 to 2022 with financial statement information.  

Reasonable questions to ask are: over a long time period, do _out of zone_ stocks underperform the market? Are the differences robust over different time periods? different firm sizes?  What about firms that are _in the zone_? What about a long/short strategy?  Where do such performance differentials come from? Do these portfolio's load on factors and thereby explain the differences? which ones? We will show that holding a portfolio of firms that _In Zone_ out performs holding the market and conversely a portfolio that holding a portfolio of firms that are _out of zone_ under performs the market. 

In this post, we start with the universe of firms that Famma and French use to construct their market factor going back to 1964. We will construct 12 portfolios. In June of each year, we will first assign firms into one of three groups: small, medium and big based on their market capitalization.  The cutoffs are chosen such that each group has an equal number of firms in each year. Second, each firm is assigned to a group: _In Zone_ and _Out of Zone_.   _In Zone_ is defined as having a margin attribution in the range of {−2.51, 6.21} and growth attribution in the range of from {−0.4,5.71} as well as having positive operating profit in two out of the past five years (See my Post "Validaiton of the Value Zone (Q3 2023 Update)).  We compute value weighted returns for 12 portfolios: {Small, Medium, Big} `\(\times\)` { _In Zone_, _Market_, _Out of Zone_, _Long Short_}, where "In the Zone" is going long all the firms in the value zone in the relevant size group, _The Market_ is going long all the names in the relevant size group, _Out of Zone_" is going long that are _Out of Zone_"  and _Long Short_ is a self-financing portfolio that is long  all the names in Value Zone and short all the names that are _Out of Zone_ in the relavant size groups.  When we aggregate across size groups we a simple average of the portfolios for each group, after sized the exposures in each portfolio.  We will also look at three different time periods: The whole time period, the last twenty years and the period covered by the paper "Buffett's Alpha."



We first look at the performance across the four groups over the whole time period and over all size groups.  We note that simply buying all the firms and equally weighting the three size groups produces strong results -- Excess Returns of 10% and a Sharpe Ratio of 53.8.  This strong performance reflects that over the past 58 years, the small firms have outperformed large firms after controlling for systematic risk (the CAPM Beta is 1.1 and the Alpha is 2.59). Buying _out of zone_ stocks underperforms the market portfolio with 103bps of excess returns, and has lower sharpe ratios, information ratios and alpha. Conversely, buying stocks that are _In Zone_ out performs the market by 65bps of excess returns, and has higher Sharpe ratios, information ratio and alpha.  The performance of the long-short portfolio is relatively poor -- an excess return of 1.73% and a Sharpe ratio of 21.4. This poor performance is the result of shorting a portfolio with substantial systematic risk (Beta of 1.2) and elevated risk resulting in a portfolio with a modest excess return and substantial volatility.


<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-2"></span>Table 1: All Three Size Groups over Whole Time Period</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> portfolio </th>
   <th style="text-align:right;"> YearsOfData </th>
   <th style="text-align:right;"> Beta </th>
   <th style="text-align:right;"> Excess_Ret </th>
   <th style="text-align:right;"> Total.Vol </th>
   <th style="text-align:right;"> iVol </th>
   <th style="text-align:right;"> Sharpe_Ratio </th>
   <th style="text-align:right;"> Information_Ratio </th>
   <th style="text-align:right;"> Alpha </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 1.0610 </td>
   <td style="text-align:right;"> 10.760 </td>
   <td style="text-align:right;"> 18.170 </td>
   <td style="text-align:right;"> 7.648 </td>
   <td style="text-align:right;"> 59.2 </td>
   <td style="text-align:right;"> 46.090 </td>
   <td style="text-align:right;"> 3.5250 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 1.0990 </td>
   <td style="text-align:right;"> 10.090 </td>
   <td style="text-align:right;"> 18.760 </td>
   <td style="text-align:right;"> 7.775 </td>
   <td style="text-align:right;"> 53.8 </td>
   <td style="text-align:right;"> 33.330 </td>
   <td style="text-align:right;"> 2.5920 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> -0.1379 </td>
   <td style="text-align:right;"> 1.733 </td>
   <td style="text-align:right;"> 8.087 </td>
   <td style="text-align:right;"> 7.804 </td>
   <td style="text-align:right;"> 21.4 </td>
   <td style="text-align:right;"> 34.270 </td>
   <td style="text-align:right;"> 2.6740 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 58 </td>
   <td style="text-align:right;"> 1.1990 </td>
   <td style="text-align:right;"> 9.030 </td>
   <td style="text-align:right;"> 21.330 </td>
   <td style="text-align:right;"> 10.390 </td>
   <td style="text-align:right;"> 42.3 </td>
   <td style="text-align:right;"> 8.188 </td>
   <td style="text-align:right;"> 0.8507 </td>
  </tr>
</tbody>
</table>

Next we will look at the performance of the portfolios of the large bucket over multiple time periods. First thing to note is that the market portfolio have betas that are close to 1 and relatively small alphas.  We would expect this as the firms in the large bucket (one-third of the firms by count) will caputure the vast majority of the market capitalization of the market as a whole. Further, the 50.7 Sharpe Ratio and excess return of 7.6% for the time period 1976-2017 are very close to the Sharpe Ratio and Excess Returns reported for the market in Buffett's Alpha for the same time period.   If we compare the performance of the _Out of Zone_ to t_Market_ it has lower excess returns in all but the full time period and substantially lower Sharpe Ratios and negative alphas.  Conversely, the _In Zone_ portfolio always has higher excess returns, alphas and Sharpe Ratio.  Once again, we see the that the long short portfolio performs poorly with only modest excess returns and Sharpe Ratios.  The Sharpe Ratio of the _In Zone_ portfolio of 0.55 during the time period 1976-2017, which compares to the 0.79 reported in Buffett's Alpha for Berkshire Hathaway, which implies that Berkshire's stock selection process adds value above and beyond choosing large stocks at random that are _In Zone_. 


<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-3"></span>Table 2: Large Firms Over Multiple Time Periods</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> timePeriod </th>
   <th style="text-align:left;"> portfolio </th>
   <th style="text-align:right;"> YearsOfData </th>
   <th style="text-align:right;"> Beta </th>
   <th style="text-align:right;"> Excess_Ret </th>
   <th style="text-align:right;"> Total.Vol </th>
   <th style="text-align:right;"> iVol </th>
   <th style="text-align:right;"> Sharpe_Ratio </th>
   <th style="text-align:right;"> Information_Ratio </th>
   <th style="text-align:right;"> Alpha </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 0.9320 </td>
   <td style="text-align:right;"> 7.0450 </td>
   <td style="text-align:right;"> 14.900 </td>
   <td style="text-align:right;"> 3.507 </td>
   <td style="text-align:right;"> 47.30 </td>
   <td style="text-align:right;"> 19.630 </td>
   <td style="text-align:right;"> 0.6885 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 0.9640 </td>
   <td style="text-align:right;"> 6.8520 </td>
   <td style="text-align:right;"> 15.230 </td>
   <td style="text-align:right;"> 2.754 </td>
   <td style="text-align:right;"> 45.00 </td>
   <td style="text-align:right;"> 10.060 </td>
   <td style="text-align:right;"> 0.2772 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> -0.1434 </td>
   <td style="text-align:right;"> -0.1580 </td>
   <td style="text-align:right;"> 9.206 </td>
   <td style="text-align:right;"> 8.938 </td>
   <td style="text-align:right;"> -1.72 </td>
   <td style="text-align:right;"> 9.176 </td>
   <td style="text-align:right;"> 0.8202 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 1.0750 </td>
   <td style="text-align:right;"> 7.2030 </td>
   <td style="text-align:right;"> 18.280 </td>
   <td style="text-align:right;"> 7.416 </td>
   <td style="text-align:right;"> 39.40 </td>
   <td style="text-align:right;"> -1.776 </td>
   <td style="text-align:right;"> -0.1317 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 0.9092 </td>
   <td style="text-align:right;"> 8.5720 </td>
   <td style="text-align:right;"> 14.920 </td>
   <td style="text-align:right;"> 4.416 </td>
   <td style="text-align:right;"> 57.50 </td>
   <td style="text-align:right;"> 50.900 </td>
   <td style="text-align:right;"> 2.2480 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 0.9937 </td>
   <td style="text-align:right;"> 7.5760 </td>
   <td style="text-align:right;"> 15.970 </td>
   <td style="text-align:right;"> 3.556 </td>
   <td style="text-align:right;"> 47.40 </td>
   <td style="text-align:right;"> 18.650 </td>
   <td style="text-align:right;"> 0.6632 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> -0.2935 </td>
   <td style="text-align:right;"> 2.6990 </td>
   <td style="text-align:right;"> 10.750 </td>
   <td style="text-align:right;"> 9.729 </td>
   <td style="text-align:right;"> 25.10 </td>
   <td style="text-align:right;"> 48.720 </td>
   <td style="text-align:right;"> 4.7400 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 1.2030 </td>
   <td style="text-align:right;"> 5.8730 </td>
   <td style="text-align:right;"> 20.560 </td>
   <td style="text-align:right;"> 8.230 </td>
   <td style="text-align:right;"> 28.60 </td>
   <td style="text-align:right;"> -30.290 </td>
   <td style="text-align:right;"> -2.4930 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 0.9278 </td>
   <td style="text-align:right;"> 8.0710 </td>
   <td style="text-align:right;"> 14.680 </td>
   <td style="text-align:right;"> 3.789 </td>
   <td style="text-align:right;"> 55.00 </td>
   <td style="text-align:right;"> 29.810 </td>
   <td style="text-align:right;"> 1.1290 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 0.9678 </td>
   <td style="text-align:right;"> 7.6580 </td>
   <td style="text-align:right;"> 15.100 </td>
   <td style="text-align:right;"> 2.988 </td>
   <td style="text-align:right;"> 50.70 </td>
   <td style="text-align:right;"> 13.940 </td>
   <td style="text-align:right;"> 0.4164 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> -0.1707 </td>
   <td style="text-align:right;"> 0.7156 </td>
   <td style="text-align:right;"> 9.833 </td>
   <td style="text-align:right;"> 9.491 </td>
   <td style="text-align:right;"> 7.28 </td>
   <td style="text-align:right;"> 21.000 </td>
   <td style="text-align:right;"> 1.9930 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 1.0980 </td>
   <td style="text-align:right;"> 7.3560 </td>
   <td style="text-align:right;"> 18.550 </td>
   <td style="text-align:right;"> 7.884 </td>
   <td style="text-align:right;"> 39.70 </td>
   <td style="text-align:right;"> -10.950 </td>
   <td style="text-align:right;"> -0.8633 </td>
  </tr>
</tbody>
</table>


Next we look at the performance of the medium sized firms over multiple time periods. _In the Zone_ consistently outperforms the market by about 100bps in Excess returns and has better Sharpe Ratios and Alpha. Conversely, the _Out of Zone_ portfolio under performs -- by more than 200 bps in excess returns and has lower Sharpe Ratios, Information Ratios and Alphas. For the 1976-2017 time period, the _In Zone_ portfolio has a Sharpe Ratio in excess of 0.62 as it does for the post 2000 time period.

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-4"></span>Table 3: Medium Sized Firms over Multiple Time Periods</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> timePeriod </th>
   <th style="text-align:left;"> portfolio </th>
   <th style="text-align:right;"> YearsOfData </th>
   <th style="text-align:right;"> Beta </th>
   <th style="text-align:right;"> Excess_Ret </th>
   <th style="text-align:right;"> Total.Vol </th>
   <th style="text-align:right;"> iVol </th>
   <th style="text-align:right;"> Sharpe_Ratio </th>
   <th style="text-align:right;"> Information_Ratio </th>
   <th style="text-align:right;"> Alpha </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 1.1460 </td>
   <td style="text-align:right;"> 11.090 </td>
   <td style="text-align:right;"> 20.340 </td>
   <td style="text-align:right;"> 9.857 </td>
   <td style="text-align:right;"> 54.5 </td>
   <td style="text-align:right;"> 33.1900 </td>
   <td style="text-align:right;"> 3.27200 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 1.1880 </td>
   <td style="text-align:right;"> 10.310 </td>
   <td style="text-align:right;"> 20.970 </td>
   <td style="text-align:right;"> 9.963 </td>
   <td style="text-align:right;"> 49.2 </td>
   <td style="text-align:right;"> 22.1800 </td>
   <td style="text-align:right;"> 2.21000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> -0.1476 </td>
   <td style="text-align:right;"> 2.787 </td>
   <td style="text-align:right;"> 9.162 </td>
   <td style="text-align:right;"> 8.877 </td>
   <td style="text-align:right;"> 30.4 </td>
   <td style="text-align:right;"> 42.7400 </td>
   <td style="text-align:right;"> 3.79400 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 1.2930 </td>
   <td style="text-align:right;"> 8.298 </td>
   <td style="text-align:right;"> 23.780 </td>
   <td style="text-align:right;"> 12.730 </td>
   <td style="text-align:right;"> 34.9 </td>
   <td style="text-align:right;"> -4.1030 </td>
   <td style="text-align:right;"> -0.52230 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 1.2370 </td>
   <td style="text-align:right;"> 13.680 </td>
   <td style="text-align:right;"> 22.010 </td>
   <td style="text-align:right;"> 10.440 </td>
   <td style="text-align:right;"> 62.1 </td>
   <td style="text-align:right;"> 48.5800 </td>
   <td style="text-align:right;"> 5.07300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 1.3110 </td>
   <td style="text-align:right;"> 12.650 </td>
   <td style="text-align:right;"> 23.040 </td>
   <td style="text-align:right;"> 10.460 </td>
   <td style="text-align:right;"> 54.9 </td>
   <td style="text-align:right;"> 33.7600 </td>
   <td style="text-align:right;"> 3.53100 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> -0.2371 </td>
   <td style="text-align:right;"> 3.345 </td>
   <td style="text-align:right;"> 11.180 </td>
   <td style="text-align:right;"> 10.560 </td>
   <td style="text-align:right;"> 29.9 </td>
   <td style="text-align:right;"> 47.3000 </td>
   <td style="text-align:right;"> 4.99500 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 1.4740 </td>
   <td style="text-align:right;"> 10.330 </td>
   <td style="text-align:right;"> 26.870 </td>
   <td style="text-align:right;"> 13.740 </td>
   <td style="text-align:right;"> 38.5 </td>
   <td style="text-align:right;"> 0.5669 </td>
   <td style="text-align:right;"> 0.07791 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 1.1070 </td>
   <td style="text-align:right;"> 12.290 </td>
   <td style="text-align:right;"> 19.640 </td>
   <td style="text-align:right;"> 9.979 </td>
   <td style="text-align:right;"> 62.6 </td>
   <td style="text-align:right;"> 40.1900 </td>
   <td style="text-align:right;"> 4.01000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 1.1600 </td>
   <td style="text-align:right;"> 11.280 </td>
   <td style="text-align:right;"> 20.420 </td>
   <td style="text-align:right;"> 10.130 </td>
   <td style="text-align:right;"> 55.2 </td>
   <td style="text-align:right;"> 25.6900 </td>
   <td style="text-align:right;"> 2.60200 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> -0.1771 </td>
   <td style="text-align:right;"> 3.697 </td>
   <td style="text-align:right;"> 9.825 </td>
   <td style="text-align:right;"> 9.455 </td>
   <td style="text-align:right;"> 37.6 </td>
   <td style="text-align:right;"> 53.1100 </td>
   <td style="text-align:right;"> 5.02200 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 1.2840 </td>
   <td style="text-align:right;"> 8.597 </td>
   <td style="text-align:right;"> 23.630 </td>
   <td style="text-align:right;"> 13.170 </td>
   <td style="text-align:right;"> 36.4 </td>
   <td style="text-align:right;"> -7.6800 </td>
   <td style="text-align:right;"> -1.01100 </td>
  </tr>
</tbody>
</table>


Next we look at the performance of the small sized firms over multiple time periods. Once again _In Zone_ consistently outperforms the market by about 100bps in Excess returns and has better Sharpe Ratios and Alpha. Conversely, the _Out of Zone_ portfolio under performs in excess returns and has lower Sharpe Ratios and Alphas. For the 1976-2017 time period, the _In Zone_ portfolio has a Sharpe Ratio in excess of 0.75, which is comparable to the Sharpe Ratio of Berkshire Hathaway over the same time period.   


<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-5"></span>Table 4: Small Sized Firms over Multiple Time Periods</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> timePeriod </th>
   <th style="text-align:left;"> portfolio </th>
   <th style="text-align:right;"> YearsOfData </th>
   <th style="text-align:right;"> Beta </th>
   <th style="text-align:right;"> Excess_Ret </th>
   <th style="text-align:right;"> Total.Vol </th>
   <th style="text-align:right;"> iVol </th>
   <th style="text-align:right;"> Sharpe_Ratio </th>
   <th style="text-align:right;"> Information_Ratio </th>
   <th style="text-align:right;"> Alpha </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 1.1060 </td>
   <td style="text-align:right;"> 14.160 </td>
   <td style="text-align:right;"> 22.51 </td>
   <td style="text-align:right;"> 14.55 </td>
   <td style="text-align:right;"> 62.9 </td>
   <td style="text-align:right;"> 45.47 </td>
   <td style="text-align:right;"> 6.615 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 1.1460 </td>
   <td style="text-align:right;"> 13.110 </td>
   <td style="text-align:right;"> 23.27 </td>
   <td style="text-align:right;"> 14.99 </td>
   <td style="text-align:right;"> 56.3 </td>
   <td style="text-align:right;"> 35.27 </td>
   <td style="text-align:right;"> 5.288 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> -0.1228 </td>
   <td style="text-align:right;"> 2.571 </td>
   <td style="text-align:right;"> 12.29 </td>
   <td style="text-align:right;"> 12.15 </td>
   <td style="text-align:right;"> 20.9 </td>
   <td style="text-align:right;"> 28.06 </td>
   <td style="text-align:right;"> 3.409 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Since 64 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 58.00 </td>
   <td style="text-align:right;"> 1.2290 </td>
   <td style="text-align:right;"> 11.590 </td>
   <td style="text-align:right;"> 26.36 </td>
   <td style="text-align:right;"> 18.19 </td>
   <td style="text-align:right;"> 44.0 </td>
   <td style="text-align:right;"> 17.63 </td>
   <td style="text-align:right;"> 3.206 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 1.1650 </td>
   <td style="text-align:right;"> 17.510 </td>
   <td style="text-align:right;"> 23.53 </td>
   <td style="text-align:right;"> 14.86 </td>
   <td style="text-align:right;"> 74.4 </td>
   <td style="text-align:right;"> 63.30 </td>
   <td style="text-align:right;"> 9.406 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 1.2450 </td>
   <td style="text-align:right;"> 15.460 </td>
   <td style="text-align:right;"> 24.67 </td>
   <td style="text-align:right;"> 15.13 </td>
   <td style="text-align:right;"> 62.7 </td>
   <td style="text-align:right;"> 44.97 </td>
   <td style="text-align:right;"> 6.802 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> -0.1844 </td>
   <td style="text-align:right;"> 4.201 </td>
   <td style="text-align:right;"> 12.49 </td>
   <td style="text-align:right;"> 12.17 </td>
   <td style="text-align:right;"> 33.6 </td>
   <td style="text-align:right;"> 45.06 </td>
   <td style="text-align:right;"> 5.484 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> After 2000 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 22.00 </td>
   <td style="text-align:right;"> 1.3500 </td>
   <td style="text-align:right;"> 13.310 </td>
   <td style="text-align:right;"> 28.05 </td>
   <td style="text-align:right;"> 18.45 </td>
   <td style="text-align:right;"> 47.5 </td>
   <td style="text-align:right;"> 21.25 </td>
   <td style="text-align:right;"> 3.922 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 1.0040 </td>
   <td style="text-align:right;"> 15.170 </td>
   <td style="text-align:right;"> 20.19 </td>
   <td style="text-align:right;"> 13.13 </td>
   <td style="text-align:right;"> 75.1 </td>
   <td style="text-align:right;"> 58.31 </td>
   <td style="text-align:right;"> 7.655 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 1.0500 </td>
   <td style="text-align:right;"> 14.270 </td>
   <td style="text-align:right;"> 21.59 </td>
   <td style="text-align:right;"> 14.46 </td>
   <td style="text-align:right;"> 66.1 </td>
   <td style="text-align:right;"> 44.38 </td>
   <td style="text-align:right;"> 6.417 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> -0.1209 </td>
   <td style="text-align:right;"> 2.395 </td>
   <td style="text-align:right;"> 12.57 </td>
   <td style="text-align:right;"> 12.44 </td>
   <td style="text-align:right;"> 19.1 </td>
   <td style="text-align:right;"> 26.52 </td>
   <td style="text-align:right;"> 3.300 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1976-2017 </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 40.42 </td>
   <td style="text-align:right;"> 1.1250 </td>
   <td style="text-align:right;"> 12.770 </td>
   <td style="text-align:right;"> 25.30 </td>
   <td style="text-align:right;"> 18.56 </td>
   <td style="text-align:right;"> 50.5 </td>
   <td style="text-align:right;"> 23.46 </td>
   <td style="text-align:right;"> 4.355 </td>
  </tr>
</tbody>
</table>


# What factors do they load on?

Following the performance attribution framework in Buffett's Alpha, for each portfolio we will regress the excess returns onto the factors _The Market_ (MKT)), _Small minus Big_ (SMB), _High Book to Equity minus Low_ (HML), _Up minus Down_ (UMD), _Betting Against Beta_ (BAB), _Quality minus Junk_ (QMJ).  As each factor exhibits positive excess returns over a long period of time a portfolio that loads positively on one or more of the factors will typically have strong performance. We report the coefficients from such regressions along with the Rsqu of the regression in the table below.  We see that all but the long short portfolios load heavily on the MKT and on SMB.  The _out of zone_ load negatively on both QMJ (strongly) and HML (less strongly).  The _In the Zone_ loads positively on the BAB and the HML factor.  The alphas are small for each portfolio indicating that the performance differences can be explained by their factor loadings \--- _In Zone_ outperforms because it loads positively on BAB, HML and QMJ relatively to the Market, and _out of zone_ performs poorly because it loads negatively on HML and QMJ relative to the market.


<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-6"></span>Table 5: Factor Loadings</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Portfolio </th>
   <th style="text-align:right;"> Alpha </th>
   <th style="text-align:right;"> MKT </th>
   <th style="text-align:right;"> SMB </th>
   <th style="text-align:right;"> HML </th>
   <th style="text-align:right;"> UMD </th>
   <th style="text-align:right;"> BAB </th>
   <th style="text-align:right;"> QMJ </th>
   <th style="text-align:right;"> Rsqu </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 0.0016 </td>
   <td style="text-align:right;"> 0.9650 </td>
   <td style="text-align:right;"> 0.5628 </td>
   <td style="text-align:right;"> 0.2330 </td>
   <td style="text-align:right;"> -0.1641 </td>
   <td style="text-align:right;"> 0.1300 </td>
   <td style="text-align:right;"> 0.0192 </td>
   <td style="text-align:right;"> 0.957 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 0.0025 </td>
   <td style="text-align:right;"> 0.9452 </td>
   <td style="text-align:right;"> 0.5602 </td>
   <td style="text-align:right;"> 0.1227 </td>
   <td style="text-align:right;"> -0.1636 </td>
   <td style="text-align:right;"> 0.0759 </td>
   <td style="text-align:right;"> -0.1329 </td>
   <td style="text-align:right;"> 0.957 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> -0.0026 </td>
   <td style="text-align:right;"> 0.0395 </td>
   <td style="text-align:right;"> -0.0329 </td>
   <td style="text-align:right;"> 0.3437 </td>
   <td style="text-align:right;"> 0.0039 </td>
   <td style="text-align:right;"> 0.1527 </td>
   <td style="text-align:right;"> 0.4295 </td>
   <td style="text-align:right;"> 0.461 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 0.0042 </td>
   <td style="text-align:right;"> 0.9255 </td>
   <td style="text-align:right;"> 0.5957 </td>
   <td style="text-align:right;"> -0.1108 </td>
   <td style="text-align:right;"> -0.1680 </td>
   <td style="text-align:right;"> -0.0228 </td>
   <td style="text-align:right;"> -0.4103 </td>
   <td style="text-align:right;"> 0.911 </td>
  </tr>
</tbody>
</table>

Given the heavy weighting on the SMB factor implicit in how all the portfolios are constructred, we next do a performance attribution for each size group.  Not surprisingly, SMB continues to be an important factor for the Small group portfolios (except for th long short portfolio) and not for the Big group portfolios.  _In Zone_ loads positively on the BAB and QMJ for the Big and Mediaum size groups, and is "less negative" than the loadings in _Market_ portfolio for the Small group. The load on QMJ is very negative for the _Out of Zone_ portfolio sfor the Small and medium size groupds. Once again, the alphas are all less than 1% in absolute value suggesting that the performance differences of each portfolio can largely be explained by the factor loadings.   


<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-7"></span>Table 6: Factor Loadings</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Size Group </th>
   <th style="text-align:left;"> Portfolio </th>
   <th style="text-align:right;"> Alpha </th>
   <th style="text-align:right;"> MKT </th>
   <th style="text-align:right;"> SMB </th>
   <th style="text-align:right;"> HML </th>
   <th style="text-align:right;"> UMD </th>
   <th style="text-align:right;"> BAB </th>
   <th style="text-align:right;"> QMJ </th>
   <th style="text-align:right;"> Rsqu </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 0.0040 </td>
   <td style="text-align:right;"> 0.8676 </td>
   <td style="text-align:right;"> 1.0102 </td>
   <td style="text-align:right;"> 0.3115 </td>
   <td style="text-align:right;"> -0.2220 </td>
   <td style="text-align:right;"> 0.2612 </td>
   <td style="text-align:right;"> -0.2121 </td>
   <td style="text-align:right;"> 0.872 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 0.0050 </td>
   <td style="text-align:right;"> 0.8377 </td>
   <td style="text-align:right;"> 0.9917 </td>
   <td style="text-align:right;"> 0.1685 </td>
   <td style="text-align:right;"> -0.2112 </td>
   <td style="text-align:right;"> 0.1956 </td>
   <td style="text-align:right;"> -0.4083 </td>
   <td style="text-align:right;"> 0.859 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> -0.0020 </td>
   <td style="text-align:right;"> 0.0478 </td>
   <td style="text-align:right;"> 0.0174 </td>
   <td style="text-align:right;"> 0.3624 </td>
   <td style="text-align:right;"> -0.0133 </td>
   <td style="text-align:right;"> 0.1527 </td>
   <td style="text-align:right;"> 0.4434 </td>
   <td style="text-align:right;"> 0.188 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 0.0061 </td>
   <td style="text-align:right;"> 0.8198 </td>
   <td style="text-align:right;"> 0.9927 </td>
   <td style="text-align:right;"> -0.0510 </td>
   <td style="text-align:right;"> -0.2087 </td>
   <td style="text-align:right;"> 0.1085 </td>
   <td style="text-align:right;"> -0.6555 </td>
   <td style="text-align:right;"> 0.766 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 0.0009 </td>
   <td style="text-align:right;"> 1.0394 </td>
   <td style="text-align:right;"> 0.7909 </td>
   <td style="text-align:right;"> 0.3478 </td>
   <td style="text-align:right;"> -0.1866 </td>
   <td style="text-align:right;"> 0.0641 </td>
   <td style="text-align:right;"> 0.1273 </td>
   <td style="text-align:right;"> 0.947 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 0.0017 </td>
   <td style="text-align:right;"> 1.0196 </td>
   <td style="text-align:right;"> 0.8012 </td>
   <td style="text-align:right;"> 0.2462 </td>
   <td style="text-align:right;"> -0.1856 </td>
   <td style="text-align:right;"> 0.0208 </td>
   <td style="text-align:right;"> -0.0383 </td>
   <td style="text-align:right;"> 0.956 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> -0.0022 </td>
   <td style="text-align:right;"> 0.0673 </td>
   <td style="text-align:right;"> -0.0446 </td>
   <td style="text-align:right;"> 0.3570 </td>
   <td style="text-align:right;"> 0.0027 </td>
   <td style="text-align:right;"> 0.1282 </td>
   <td style="text-align:right;"> 0.5633 </td>
   <td style="text-align:right;"> 0.428 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 0.0031 </td>
   <td style="text-align:right;"> 0.9722 </td>
   <td style="text-align:right;"> 0.8355 </td>
   <td style="text-align:right;"> -0.0092 </td>
   <td style="text-align:right;"> -0.1893 </td>
   <td style="text-align:right;"> -0.0641 </td>
   <td style="text-align:right;"> -0.4359 </td>
   <td style="text-align:right;"> 0.915 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> -0.0002 </td>
   <td style="text-align:right;"> 0.9881 </td>
   <td style="text-align:right;"> -0.1127 </td>
   <td style="text-align:right;"> 0.0396 </td>
   <td style="text-align:right;"> -0.0837 </td>
   <td style="text-align:right;"> 0.0645 </td>
   <td style="text-align:right;"> 0.1424 </td>
   <td style="text-align:right;"> 0.967 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 0.0008 </td>
   <td style="text-align:right;"> 0.9783 </td>
   <td style="text-align:right;"> -0.1124 </td>
   <td style="text-align:right;"> -0.0466 </td>
   <td style="text-align:right;"> -0.0940 </td>
   <td style="text-align:right;"> 0.0113 </td>
   <td style="text-align:right;"> 0.0480 </td>
   <td style="text-align:right;"> 0.980 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> -0.0035 </td>
   <td style="text-align:right;"> 0.0035 </td>
   <td style="text-align:right;"> -0.0715 </td>
   <td style="text-align:right;"> 0.3118 </td>
   <td style="text-align:right;"> 0.0223 </td>
   <td style="text-align:right;"> 0.1772 </td>
   <td style="text-align:right;"> 0.2817 </td>
   <td style="text-align:right;"> 0.319 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 0.0034 </td>
   <td style="text-align:right;"> 0.9846 </td>
   <td style="text-align:right;"> -0.0412 </td>
   <td style="text-align:right;"> -0.2722 </td>
   <td style="text-align:right;"> -0.1060 </td>
   <td style="text-align:right;"> -0.1127 </td>
   <td style="text-align:right;"> -0.1393 </td>
   <td style="text-align:right;"> 0.872 </td>
  </tr>
</tbody>
</table>

# What Performance Can We Expect Going Forward?

We can estimate a "Expected Excess Returns" "Expected Sharpe Ratios" and "Expected Information Ratios" for each portfolio by assuing tha the following assumptions:

1) the factoring loadings are persistent 
2) the 'alpha' of each porfolio of 0
3) The mean returns exhibited of each factor over the past sixy years will persist
4) The variance covariance matrix of each factor will persist.

The table below presents the results from this analysis. In all cases, the Expected Sharpe Ratio of the _Out of Zone_ portfolio is significantly below that of the market. And in all cases the Expected Sharpe Ratio of the _In the Zone_ portfolio out performs the market. The Excess Returns of _In the Zone_ exceed more than 100bps.  In factor the Expected Sharpe Ratio for the _In Zone_ Big portfolio reaches 58.3.


```r
load("/Users/dwd4/Rstuff/WRDS/DWDfact.Rdata")
source("/Users/dwd4/Rstuff/WRDS/portfolioPerformance.R")  

tst = function(portfolioIn){portfolioPerformance(portfolioIn,factors_In = DWDfact)}
sharpe2 = apply(weightsQMJ[2:7,],2,tst)  

onesVec = rep(1,ncol(sharpe2))
zeroMat = matrix(rep(0,5*ncol(sharpe2)),ncol=5)

shortMarket = cbind(onesVec,zeroMat)

EiVol_tmp = apply(weightsQMJ[2:7,] - t(shortMarket),2,tst)
sharpe3 = sharpe2[1,]/sqrt( (sharpe2[2,]^2 +  (sqrt(12)*iVolQMJ)^2) ) 

Alpha = ExcessReturn - sharpe2[4,]*12*mean(DWDfact[,2])
#Alpha[18]
#sharpe2[4,18]

EinfoRat = (Alpha )/sqrt( (EiVol_tmp[2,]^2 +  (sqrt(12)*iVolQMJ)^2) ) 


tmp = data.frame(sizeGroup = alldone$sizeGroup,portfolio= alldone$portfolio,timePeriod= alldone$timePeriod,
   #            "Excess_Ret" = signif(100*ExcessReturn,3), 
    #             "Sharpe_Ratio" = signif(sharpeRatios,3), 
    #             'Information_Ratio'= signif(100*informationRatio,3),
                 "E_Excess_Ret" = signif(100*sharpe2[1,],3),
                 "E_Sharpe_R" = signif(100*sharpe3,3),
                 'E_Info_Ratio'= signif(100*EinfoRat,3)) 
#



tmp2 = tmp %>% filter(sizeGroup %in% c("All ", "Big ","Mid ", "Small ") & timePeriod == " Since 64") %>% select(-timePeriod)
head(tmp2)
```

```
##   sizeGroup     portfolio E_Excess_Ret E_Sharpe_R E_Info_Ratio
## 1      All       In Zone          8.64       48.3         45.8
## 2      All        Market          6.93       37.6         32.6
## 3      All    Long Short          4.77       59.3         13.8
## 4      All   Out of Zone          3.87       18.5          7.6
## 5    Small       In Zone          8.93       40.5         45.9
## 6    Small        Market          6.79       29.8         35.4
```

```r
names(tmp2)[1:2] = c('Size Group', 'Portfolio')

table <- kable(tmp2, caption = "Factor Loadings",
               row.names=FALSE)

table %>%
  kable_styling(full_width = FALSE)
```

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-8"></span>Table 7: Factor Loadings</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Size Group </th>
   <th style="text-align:left;"> Portfolio </th>
   <th style="text-align:right;"> E_Excess_Ret </th>
   <th style="text-align:right;"> E_Sharpe_R </th>
   <th style="text-align:right;"> E_Info_Ratio </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 8.64 </td>
   <td style="text-align:right;"> 48.3 </td>
   <td style="text-align:right;"> 45.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 6.93 </td>
   <td style="text-align:right;"> 37.6 </td>
   <td style="text-align:right;"> 32.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 4.77 </td>
   <td style="text-align:right;"> 59.3 </td>
   <td style="text-align:right;"> 13.80 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> All </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 3.87 </td>
   <td style="text-align:right;"> 18.5 </td>
   <td style="text-align:right;"> 7.60 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 8.93 </td>
   <td style="text-align:right;"> 40.5 </td>
   <td style="text-align:right;"> 45.90 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 6.79 </td>
   <td style="text-align:right;"> 29.8 </td>
   <td style="text-align:right;"> 35.40 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 4.91 </td>
   <td style="text-align:right;"> 40.0 </td>
   <td style="text-align:right;"> 16.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Small </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 4.02 </td>
   <td style="text-align:right;"> 15.5 </td>
   <td style="text-align:right;"> 17.50 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 9.67 </td>
   <td style="text-align:right;"> 48.3 </td>
   <td style="text-align:right;"> 32.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 8.07 </td>
   <td style="text-align:right;"> 39.2 </td>
   <td style="text-align:right;"> 21.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 5.32 </td>
   <td style="text-align:right;"> 58.3 </td>
   <td style="text-align:right;"> 19.10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Mid </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 4.34 </td>
   <td style="text-align:right;"> 18.6 </td>
   <td style="text-align:right;"> -4.23 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> In Zone </td>
   <td style="text-align:right;"> 7.31 </td>
   <td style="text-align:right;"> 49.5 </td>
   <td style="text-align:right;"> 16.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> Market </td>
   <td style="text-align:right;"> 5.94 </td>
   <td style="text-align:right;"> 39.4 </td>
   <td style="text-align:right;"> 6.28 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> Long Short </td>
   <td style="text-align:right;"> 4.07 </td>
   <td style="text-align:right;"> 44.4 </td>
   <td style="text-align:right;"> 4.03 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Big </td>
   <td style="text-align:left;"> Out of Zone </td>
   <td style="text-align:right;"> 3.25 </td>
   <td style="text-align:right;"> 18.0 </td>
   <td style="text-align:right;"> -2.85 </td>
  </tr>
</tbody>
</table>


