---
title: How to Beat the S&P 500 By Not Trying
author: Douglas W. Dwyer
date: '2023-10-06'
slug: how-to-beat-the-s-p-500-by-not-trying
categories:
  - General Theory
tags:
  - Validation
---
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/kePrint/kePrint.js"></script>
<link href="{{< blogdown/postref >}}index_files/lightable/lightable.css" rel="stylesheet" />


# Introduction

There is a long literature on the existence of so-called factors that represent "long-short" portfolios that are self-financing and have positive returns on average over long periods of time.  Some factors such as "market minus the risk-free" rate have obvious risk/reward interpretations: : going long the market and shorting a risk-free asset should have a positive return as the market is riskier than the risk-free rate. For other factors, there are a variety of hypothesis to explain the abnormal returns including systematic pricing errors by the market. 

The existence of such factors implies that if one can construct a well-diversified portfolio that has a beta of about one and has positive exposures to these factors, one will outperform the market as measured by Sharpe Ratios, Excess Returns and Information Ratios.  For a retail investor to construct and maintain such a portfolio by taking exposures to individual stocks, however, is a daunting task as one would need to rebalance positions in many different stocks regularly.

Of course, there are numerous mutual funds who claim to be able to construct a "smart beta" portfolio for their investors and charge a fee for their service.  A reasonable question is: "How do I know they will be smart going forward? smart enough to earn their fee?"

A retail investor can investor in SPY, which is an exchange traded fund that is designed to track the S&P 500 and carries only a minimal fee (SPY is colloquially referred to as "spiders").  Consequently, a portfolio of SPY will have the advantage of guaranteeing the investor that they will not under perform the S&P 500; and the disadvantage that they will not out-perform the S&P 500. 

What about other ETFs?  There are in fact "factor ETFs" that are sold by iShares (part of BlackRock) and will often track indices published by MSCI. They form portfolios using a specific set of rules.  Such funds are inexpensive to maintain when implemented on a large scale.  Consequently, these ETFs have minimal fees as well.  Can a retail investor using such ETFs to outperform the S&P 500?

This paper builds on a paper that assessed the performance of Berkshire Hathaway (BRK) over forty years. The authors of the paper concluded that BRK's outstanding alpha of 0.79 can be replicated by loading on two factors that are called BAB (Betting against Beta) and QMJ (Quality Minus Junket).  Additionally, BRK takes advantage of its ability to borrow at low interest rates to deploy leverage and increase their excess returns.  

The paper that this builds on is "Buffett's Alpha" by A. Frazzini, D. Kabiller and LH Pedersen.  It was published in the Fourth Quarter of 2018 of the _Financial Analysts Journal_. The authors of the paper are associated with AQR. AQR is an investment management firm that publishes the factors UMD, BAB and QMJ.  Additionally, the authors were coauthors of the paper that introduced the Quality Minus Junk factor. 

As a result of this analysis, I ended up buying two such funds.  

![](images/pagebreak5.png)

# Measuring performance

In "Buffet's Alpha," Table 2 reports the Beta, Average Excess Return, Total Volatility, Idiosyncratic Volatility, Sharpe Ratio, Information Ratio and Leverage of Berkshire Hathaway in Column 1 and that of the "Overall Stock Market Performance," as a reference in Column 4. The first row of Table 1 below replicates the first Column of Table 4. In Addition, I present Alpha in the last column that matches Alpha in Column one of Table 4 from Buttet's Alpha as well.  This is an analysis of the performance of Berkshire Hathaway using the time interval considered in the paper (10/1976-3/2017).  

The numbers are obtained as follows. First, I downloaded the returns on Berkshire Hathaway from WRDS. Second, I downloaded the "Fama French Factors" from Ken French's website, and merge.  Third, I downloaded the factors UMD, BAB, and QMJ from AQR's website. Fourth, I eliminated rows outside of the desired time period. Fifth, create excess returns for BRK by subtracting the risk-free rate from the returns on BRK. 

- Beta is obtained by regressing the excess returns of BRK onto the MKT factor.  The Excess returns of the market is just the returns on the S&P 500 less the return on a three month treasury, and we always work with a monthly time interval. 

- The average excess return is just the mean of excess returns of BRK over this time period. 

- Total Volatility is the standard deviation of excess returns. 

- Idiosyncratic Volatility is the root mean square error of the regression of excess returns of BRK onto the market. 

- The Sharpe Ratio and the Information Ratio are the ratio of Excess Returns to Total Volatility and Alpha to Idiosyncratic Returns, respectively.  

- Alpha is the coefficient of the intercept of the regression of BRK's excess returns onto the excess returns of the market.

![](images/pagebreak6.png)

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-1"></span>Table 1: Funds Analyzed Through the 'Buffet's Alpha Framework'</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Fund </th>
   <th style="text-align:left;"> Fund Name </th>
   <th style="text-align:right;"> Years of Data </th>
   <th style="text-align:right;"> Beta </th>
   <th style="text-align:right;"> Excess Return </th>
   <th style="text-align:right;"> Total Vol </th>
   <th style="text-align:right;"> Idiosyncratic Vol </th>
   <th style="text-align:right;"> Sharpe Ratio </th>
   <th style="text-align:right;"> Information Ratio </th>
   <th style="text-align:right;"> Alpha </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> BRK2 </td>
   <td style="text-align:left;"> Berkshire Hathaway 10/1976-3/2017 </td>
   <td style="text-align:right;"> 40.4 </td>
   <td style="text-align:right;"> 0.686 </td>
   <td style="text-align:right;"> 0.186 </td>
   <td style="text-align:right;"> 0.236 </td>
   <td style="text-align:right;"> 0.211 </td>
   <td style="text-align:right;"> 78.8 </td>
   <td style="text-align:right;"> 0.636 </td>
   <td style="text-align:right;"> 0.134 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> QQQ </td>
   <td style="text-align:left;"> Invesco QQQ Trust </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 1.066 </td>
   <td style="text-align:right;"> 0.149 </td>
   <td style="text-align:right;"> 0.190 </td>
   <td style="text-align:right;"> 0.075 </td>
   <td style="text-align:right;"> 78.4 </td>
   <td style="text-align:right;"> 0.634 </td>
   <td style="text-align:right;"> 0.048 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BRK </td>
   <td style="text-align:left;"> Berkshire Hathaway 10/1976-12/2022 </td>
   <td style="text-align:right;"> 46.2 </td>
   <td style="text-align:right;"> 0.711 </td>
   <td style="text-align:right;"> 0.177 </td>
   <td style="text-align:right;"> 0.231 </td>
   <td style="text-align:right;"> 0.203 </td>
   <td style="text-align:right;"> 76.6 </td>
   <td style="text-align:right;"> 0.598 </td>
   <td style="text-align:right;"> 0.121 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FDGRX </td>
   <td style="text-align:left;"> Fidelity Growth Company </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 1.104 </td>
   <td style="text-align:right;"> 0.142 </td>
   <td style="text-align:right;"> 0.195 </td>
   <td style="text-align:right;"> 0.073 </td>
   <td style="text-align:right;"> 72.9 </td>
   <td style="text-align:right;"> 0.510 </td>
   <td style="text-align:right;"> 0.037 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> USMV </td>
   <td style="text-align:left;"> iShares MSCI USA Min Vol Factor </td>
   <td style="text-align:right;"> 11.9 </td>
   <td style="text-align:right;"> 0.685 </td>
   <td style="text-align:right;"> 0.109 </td>
   <td style="text-align:right;"> 0.116 </td>
   <td style="text-align:right;"> 0.057 </td>
   <td style="text-align:right;"> 94.1 </td>
   <td style="text-align:right;"> 0.333 </td>
   <td style="text-align:right;"> 0.019 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BRK3 </td>
   <td style="text-align:left;"> Berkshire Hathaway 1/2013-12/2022 </td>
   <td style="text-align:right;"> 10.9 </td>
   <td style="text-align:right;"> 0.824 </td>
   <td style="text-align:right;"> 0.135 </td>
   <td style="text-align:right;"> 0.166 </td>
   <td style="text-align:right;"> 0.112 </td>
   <td style="text-align:right;"> 81.1 </td>
   <td style="text-align:right;"> 0.290 </td>
   <td style="text-align:right;"> 0.032 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DGRO </td>
   <td style="text-align:left;"> iShares Core Dividend Growth </td>
   <td style="text-align:right;"> 9.2 </td>
   <td style="text-align:right;"> 0.860 </td>
   <td style="text-align:right;"> 0.106 </td>
   <td style="text-align:right;"> 0.144 </td>
   <td style="text-align:right;"> 0.046 </td>
   <td style="text-align:right;"> 73.5 </td>
   <td style="text-align:right;"> 0.226 </td>
   <td style="text-align:right;"> 0.010 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> QUAL </td>
   <td style="text-align:left;"> iShares MSCI USA Quality Factor ETF </td>
   <td style="text-align:right;"> 10.2 </td>
   <td style="text-align:right;"> 0.967 </td>
   <td style="text-align:right;"> 0.121 </td>
   <td style="text-align:right;"> 0.153 </td>
   <td style="text-align:right;"> 0.033 </td>
   <td style="text-align:right;"> 79.2 </td>
   <td style="text-align:right;"> 0.195 </td>
   <td style="text-align:right;"> 0.006 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FAGIX </td>
   <td style="text-align:left;"> FIDELITY CAPITAL &amp; INCOME </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 0.587 </td>
   <td style="text-align:right;"> 0.065 </td>
   <td style="text-align:right;"> 0.113 </td>
   <td style="text-align:right;"> 0.060 </td>
   <td style="text-align:right;"> 57.1 </td>
   <td style="text-align:right;"> 0.149 </td>
   <td style="text-align:right;"> 0.009 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FBALX </td>
   <td style="text-align:left;"> FIDELITY BALANCED </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 0.717 </td>
   <td style="text-align:right;"> 0.072 </td>
   <td style="text-align:right;"> 0.120 </td>
   <td style="text-align:right;"> 0.024 </td>
   <td style="text-align:right;"> 59.8 </td>
   <td style="text-align:right;"> 0.148 </td>
   <td style="text-align:right;"> 0.004 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MTUM </td>
   <td style="text-align:left;"> iShares MSCI USA Momentum Factor ETF </td>
   <td style="text-align:right;"> 10.4 </td>
   <td style="text-align:right;"> 0.888 </td>
   <td style="text-align:right;"> 0.117 </td>
   <td style="text-align:right;"> 0.153 </td>
   <td style="text-align:right;"> 0.070 </td>
   <td style="text-align:right;"> 76.6 </td>
   <td style="text-align:right;"> 0.118 </td>
   <td style="text-align:right;"> 0.008 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MCO </td>
   <td style="text-align:left;"> MOODYS CORP COM USD0.01 </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 1.284 </td>
   <td style="text-align:right;"> 0.148 </td>
   <td style="text-align:right;"> 0.311 </td>
   <td style="text-align:right;"> 0.230 </td>
   <td style="text-align:right;"> 47.7 </td>
   <td style="text-align:right;"> 0.115 </td>
   <td style="text-align:right;"> 0.026 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SPY </td>
   <td style="text-align:left;"> SPDR S&amp;P 500 ETF Trust </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 0.965 </td>
   <td style="text-align:right;"> 0.093 </td>
   <td style="text-align:right;"> 0.159 </td>
   <td style="text-align:right;"> 0.016 </td>
   <td style="text-align:right;"> 58.7 </td>
   <td style="text-align:right;"> 0.104 </td>
   <td style="text-align:right;"> 0.002 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MSEQX </td>
   <td style="text-align:left;"> Morgan Stanley Institutional Growth Fund </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 1.160 </td>
   <td style="text-align:right;"> 0.121 </td>
   <td style="text-align:right;"> 0.237 </td>
   <td style="text-align:right;"> 0.142 </td>
   <td style="text-align:right;"> 51.1 </td>
   <td style="text-align:right;"> 0.078 </td>
   <td style="text-align:right;"> 0.011 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FCPVX </td>
   <td style="text-align:left;"> FIDELITY SMALL CAP VALUE </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 1.106 </td>
   <td style="text-align:right;"> 0.097 </td>
   <td style="text-align:right;"> 0.203 </td>
   <td style="text-align:right;"> 0.091 </td>
   <td style="text-align:right;"> 48.1 </td>
   <td style="text-align:right;"> -0.084 </td>
   <td style="text-align:right;"> -0.008 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FLPSX </td>
   <td style="text-align:left;"> FIDELITY LOW PRICED STOCK </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 0.961 </td>
   <td style="text-align:right;"> 0.086 </td>
   <td style="text-align:right;"> 0.168 </td>
   <td style="text-align:right;"> 0.057 </td>
   <td style="text-align:right;"> 51.2 </td>
   <td style="text-align:right;"> -0.096 </td>
   <td style="text-align:right;"> -0.005 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SIZE </td>
   <td style="text-align:left;"> iShares MSCI USA Size Factor ETF </td>
   <td style="text-align:right;"> 10.4 </td>
   <td style="text-align:right;"> 0.994 </td>
   <td style="text-align:right;"> 0.109 </td>
   <td style="text-align:right;"> 0.158 </td>
   <td style="text-align:right;"> 0.041 </td>
   <td style="text-align:right;"> 69.3 </td>
   <td style="text-align:right;"> -0.310 </td>
   <td style="text-align:right;"> -0.013 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IWM </td>
   <td style="text-align:left;"> iShares Russell 2000 ETF </td>
   <td style="text-align:right;"> 16.7 </td>
   <td style="text-align:right;"> 1.168 </td>
   <td style="text-align:right;"> 0.081 </td>
   <td style="text-align:right;"> 0.206 </td>
   <td style="text-align:right;"> 0.076 </td>
   <td style="text-align:right;"> 39.6 </td>
   <td style="text-align:right;"> -0.391 </td>
   <td style="text-align:right;"> -0.030 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VLUE </td>
   <td style="text-align:left;"> iShares MSCI USA Value Factor ETF </td>
   <td style="text-align:right;"> 10.4 </td>
   <td style="text-align:right;"> 1.010 </td>
   <td style="text-align:right;"> 0.094 </td>
   <td style="text-align:right;"> 0.170 </td>
   <td style="text-align:right;"> 0.071 </td>
   <td style="text-align:right;"> 55.4 </td>
   <td style="text-align:right;"> -0.417 </td>
   <td style="text-align:right;"> -0.030 </td>
  </tr>
</tbody>
</table>

The table contains rows for multiple funds.  The first thing to note is the time period. For BRK, I source returns from WRDS which enables me to go back over 45 years for the returns of Berkshire Hathaway.  For all the other funds, in contrast, the time span is at most 16.7 years, which reflects that I am pulling the returns from Yahoo Finance, which only goes back to the beginning of 2007.The table has been sorted by descending Information Ratio. Of all the funds considered, BRK up to to 2017 has the best Information Ratio and the best Alpha so it is the first row. Of course, Excess Returns and Sharpe Ratios will tend to be higher in time periods in which the market does well and low in time periods when the market does poorly so it is difficult to compare these performance metrics across funds when measured over different time intervals, whereas Alpha and Information Ratio are more comparable as they both measure performance relative to the market.

The table includes other funds that a retail investor could consider investing in.  It includes funds that are designed to track an index (SPY, QQQ, IWM, FXAIX, SPTM) and other funds that are marketed as factor funds (USMV, DGRO, QUAL, MTUM, SIZE and VLUE) as well as a variety of other funds for reference purposes. I also included the stock of my former employer, MCO, as a reference point. 

A few things to note. First, the performance of BRK over the past ten years (BRK3) is not as impressive as the performance of BRK in the forty years that preceded it. Nevertheless, the performance of BRK continues to be impressive in that they almost comparable to the best "factor fund" over this time period, USMV. Among the best information ratios are QQQ and the Fidelity Growth fund. Is such performance likely to persist?  Negative information ratios and negative alphas have been experienced by the VLUE, IWM, SIZE, FCPVX.  The time period for IWM and SPY are comparable, IWM had an excess return that was 1.2% behind SPY and had more risk.  Can these differences be expected to persist?

These questions lead us to use a factor framework to explain where these performance differentials are coming from.

![](images/pagebreak5.png)


# Performance Attribution through a Factor Framework

I create a matrix of six factors by merging the three factors of Famma French with another three factors taken from AQR and eliminating all the rows with missing observations.  The resulting table represents 792 monthly returns of each factor over the time period July 1956 until Jun 2023 (66 years). I can estimate the expected return on each factor as the mean of its column, and the corresponding covariance matrix of the factors provides an estimate of the variance covariance matrix of the factors.  If I know how a portfolio loads onto the factors I can compute the expected return on the portfolio as well as the variance of the systematic risk of the portfolio.  One way to estimate the loadings of a portfolio onto factors is to regress the returns of the portfolio onto the returns of the factors, which is the approach taken by Table 4 of Buffet's Alpha.  

Table 2 presents the factor loadings of each fund obtained by regressing each fund's returns on the 6 factors.  The second row matches with the fifth column of Table 4 in Buffet's alpha.^[While the numbers are not materially different, they are not identical.  The biggest difference is for the QMJ factor (0.3917 versus 0.47).  My understanding it that small differences in the results are to be expected because the factors I recently downloaded are not identical to what the paper used five years ago.]  The table as been sort by descending alpha.

A few things to note. The so called factor ETFs are loading in a sensible manner.  DGRO & QUAL loads on QMJ, VLUE loads on SMB, SPY loads on MKT, MTUM loads on UMD and USMV loads on both BAB and QUAL.  Not surprisinginly, BRK loads on HML, BAB & QMJ at least for the long time periods.  For the past ten years, however, BRK loads heavily on HML but is short BAB and the loading on QMJ has fallen considerably.  Surprisingly, SIZE does not appear to load on SMB. I have also included two growth mutual funds that are short HML and QMJ.   

After controlling for six factors, the intrepretation of alpha is a bit different.  For example, the fund with the lowest alpha in the six factor context, USMV of -2%, has a solid positive alpha of 2% in Table 1.  What this means is the strong performance of USMV relative to the S&P500 can be explained by the factors it loads on. As we only have 141 monthly observations for the entire history of USMV, both alphas are statistically insignificant.  

All the funds have substantial market risk, the lowest beta is for the USMV fund of 0.77.  It also has the lowest Rsquared of 0.857%, which means that 86% of its returns can be explained by the 6 factors included in the regression. 

What we have analysed here is how the funds load on factors using relatively short time windows (between 9 and 17 years).  Nevertheless, we can us the sixty six years of factor history to estimate what we expect the performance of each fund to be looking forward, presuming that they continue to load on the factors as they have historically.

![](images/pagebreak6.png)


<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-2"></span>Table 2: Attributing Fund Performance To Factors</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Fund </th>
   <th style="text-align:left;"> Fund Name </th>
   <th style="text-align:right;"> Alpha </th>
   <th style="text-align:right;"> Beta </th>
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
   <td style="text-align:left;"> BRK </td>
   <td style="text-align:left;"> Berkshire Hathaway 10/1976-12/2022 </td>
   <td style="text-align:right;"> 0.0588 </td>
   <td style="text-align:right;"> 0.9100 </td>
   <td style="text-align:right;"> -0.2416 </td>
   <td style="text-align:right;"> 0.3721 </td>
   <td style="text-align:right;"> -0.0238 </td>
   <td style="text-align:right;"> 0.2502 </td>
   <td style="text-align:right;"> 0.3021 </td>
   <td style="text-align:right;"> 0.318 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BRK2 </td>
   <td style="text-align:left;"> Berkshire Hathaway 10/1976-3/2017 </td>
   <td style="text-align:right;"> 0.0576 </td>
   <td style="text-align:right;"> 0.9332 </td>
   <td style="text-align:right;"> -0.1839 </td>
   <td style="text-align:right;"> 0.3965 </td>
   <td style="text-align:right;"> -0.0483 </td>
   <td style="text-align:right;"> 0.2838 </td>
   <td style="text-align:right;"> 0.3917 </td>
   <td style="text-align:right;"> 0.284 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MSEQX </td>
   <td style="text-align:left;"> Morgan Stanley Institutional Growth Fund </td>
   <td style="text-align:right;"> 0.0384 </td>
   <td style="text-align:right;"> 0.9903 </td>
   <td style="text-align:right;"> 0.1873 </td>
   <td style="text-align:right;"> -0.8103 </td>
   <td style="text-align:right;"> -0.0174 </td>
   <td style="text-align:right;"> -0.0276 </td>
   <td style="text-align:right;"> -0.6677 </td>
   <td style="text-align:right;"> 0.849 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FDGRX </td>
   <td style="text-align:left;"> Fidelity Growth Company </td>
   <td style="text-align:right;"> 0.0384 </td>
   <td style="text-align:right;"> 1.0993 </td>
   <td style="text-align:right;"> 0.0913 </td>
   <td style="text-align:right;"> -0.4207 </td>
   <td style="text-align:right;"> 0.0930 </td>
   <td style="text-align:right;"> -0.0543 </td>
   <td style="text-align:right;"> -0.2311 </td>
   <td style="text-align:right;"> 0.940 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> QQQ </td>
   <td style="text-align:left;"> Invesco QQQ Trust </td>
   <td style="text-align:right;"> 0.0324 </td>
   <td style="text-align:right;"> 1.1246 </td>
   <td style="text-align:right;"> -0.0937 </td>
   <td style="text-align:right;"> -0.4257 </td>
   <td style="text-align:right;"> -0.0273 </td>
   <td style="text-align:right;"> -0.0398 </td>
   <td style="text-align:right;"> 0.0109 </td>
   <td style="text-align:right;"> 0.907 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FAGIX </td>
   <td style="text-align:left;"> FIDELITY CAPITAL &amp; INCOME </td>
   <td style="text-align:right;"> 0.0264 </td>
   <td style="text-align:right;"> 0.4556 </td>
   <td style="text-align:right;"> 0.0221 </td>
   <td style="text-align:right;"> 0.0211 </td>
   <td style="text-align:right;"> -0.1206 </td>
   <td style="text-align:right;"> 0.2660 </td>
   <td style="text-align:right;"> -0.2321 </td>
   <td style="text-align:right;"> 0.806 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BRK3 </td>
   <td style="text-align:left;"> Berkshire Hathaway 1/2013-12/2022 </td>
   <td style="text-align:right;"> 0.0192 </td>
   <td style="text-align:right;"> 0.9537 </td>
   <td style="text-align:right;"> -0.4208 </td>
   <td style="text-align:right;"> 0.4003 </td>
   <td style="text-align:right;"> 0.1409 </td>
   <td style="text-align:right;"> -0.2155 </td>
   <td style="text-align:right;"> 0.0882 </td>
   <td style="text-align:right;"> 0.676 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FCPVX </td>
   <td style="text-align:left;"> FIDELITY SMALL CAP VALUE </td>
   <td style="text-align:right;"> 0.0096 </td>
   <td style="text-align:right;"> 0.9587 </td>
   <td style="text-align:right;"> 0.6052 </td>
   <td style="text-align:right;"> 0.4612 </td>
   <td style="text-align:right;"> -0.0606 </td>
   <td style="text-align:right;"> 0.0244 </td>
   <td style="text-align:right;"> 0.1070 </td>
   <td style="text-align:right;"> 0.935 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MCO </td>
   <td style="text-align:left;"> MOODYS CORP COM USD0.01 </td>
   <td style="text-align:right;"> 0.0048 </td>
   <td style="text-align:right;"> 1.3120 </td>
   <td style="text-align:right;"> -0.1606 </td>
   <td style="text-align:right;"> -0.3501 </td>
   <td style="text-align:right;"> -0.2258 </td>
   <td style="text-align:right;"> 0.1939 </td>
   <td style="text-align:right;"> 0.1463 </td>
   <td style="text-align:right;"> 0.467 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FBALX </td>
   <td style="text-align:left;"> FIDELITY BALANCED </td>
   <td style="text-align:right;"> 0.0036 </td>
   <td style="text-align:right;"> 0.7019 </td>
   <td style="text-align:right;"> -0.0669 </td>
   <td style="text-align:right;"> -0.0726 </td>
   <td style="text-align:right;"> -0.0458 </td>
   <td style="text-align:right;"> 0.0872 </td>
   <td style="text-align:right;"> -0.0525 </td>
   <td style="text-align:right;"> 0.971 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FLPSX </td>
   <td style="text-align:left;"> FIDELITY LOW PRICED STOCK </td>
   <td style="text-align:right;"> 0.0036 </td>
   <td style="text-align:right;"> 0.8865 </td>
   <td style="text-align:right;"> 0.1273 </td>
   <td style="text-align:right;"> 0.2412 </td>
   <td style="text-align:right;"> -0.0767 </td>
   <td style="text-align:right;"> 0.1111 </td>
   <td style="text-align:right;"> 0.0185 </td>
   <td style="text-align:right;"> 0.924 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SPY </td>
   <td style="text-align:left;"> SPDR S&amp;P 500 ETF Trust </td>
   <td style="text-align:right;"> -0.0024 </td>
   <td style="text-align:right;"> 0.9956 </td>
   <td style="text-align:right;"> -0.1405 </td>
   <td style="text-align:right;"> 0.0122 </td>
   <td style="text-align:right;"> -0.0123 </td>
   <td style="text-align:right;"> 0.0137 </td>
   <td style="text-align:right;"> 0.0405 </td>
   <td style="text-align:right;"> 0.997 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DGRO </td>
   <td style="text-align:left;"> iShares Core Dividend Growth </td>
   <td style="text-align:right;"> -0.0084 </td>
   <td style="text-align:right;"> 0.9211 </td>
   <td style="text-align:right;"> -0.0847 </td>
   <td style="text-align:right;"> 0.1702 </td>
   <td style="text-align:right;"> -0.0156 </td>
   <td style="text-align:right;"> 0.0330 </td>
   <td style="text-align:right;"> 0.2295 </td>
   <td style="text-align:right;"> 0.959 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> QUAL </td>
   <td style="text-align:left;"> iShares MSCI USA Quality Factor ETF </td>
   <td style="text-align:right;"> -0.0108 </td>
   <td style="text-align:right;"> 1.0202 </td>
   <td style="text-align:right;"> -0.1088 </td>
   <td style="text-align:right;"> -0.0688 </td>
   <td style="text-align:right;"> -0.0142 </td>
   <td style="text-align:right;"> -0.0348 </td>
   <td style="text-align:right;"> 0.1741 </td>
   <td style="text-align:right;"> 0.972 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SIZE </td>
   <td style="text-align:left;"> iShares MSCI USA Size Factor ETF </td>
   <td style="text-align:right;"> -0.0108 </td>
   <td style="text-align:right;"> 0.9479 </td>
   <td style="text-align:right;"> 0.0176 </td>
   <td style="text-align:right;"> 0.1236 </td>
   <td style="text-align:right;"> -0.0925 </td>
   <td style="text-align:right;"> 0.1760 </td>
   <td style="text-align:right;"> -0.0140 </td>
   <td style="text-align:right;"> 0.955 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VLUE </td>
   <td style="text-align:left;"> iShares MSCI USA Value Factor ETF </td>
   <td style="text-align:right;"> -0.0144 </td>
   <td style="text-align:right;"> 0.9629 </td>
   <td style="text-align:right;"> 0.0538 </td>
   <td style="text-align:right;"> 0.3899 </td>
   <td style="text-align:right;"> -0.0937 </td>
   <td style="text-align:right;"> 0.0319 </td>
   <td style="text-align:right;"> 0.0315 </td>
   <td style="text-align:right;"> 0.925 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IWM </td>
   <td style="text-align:left;"> iShares Russell 2000 ETF </td>
   <td style="text-align:right;"> -0.0144 </td>
   <td style="text-align:right;"> 1.0120 </td>
   <td style="text-align:right;"> 0.8416 </td>
   <td style="text-align:right;"> 0.2047 </td>
   <td style="text-align:right;"> 0.0385 </td>
   <td style="text-align:right;"> 0.0090 </td>
   <td style="text-align:right;"> -0.0170 </td>
   <td style="text-align:right;"> 0.989 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MTUM </td>
   <td style="text-align:left;"> iShares MSCI USA Momentum Factor ETF </td>
   <td style="text-align:right;"> -0.0192 </td>
   <td style="text-align:right;"> 1.0088 </td>
   <td style="text-align:right;"> -0.1022 </td>
   <td style="text-align:right;"> -0.0704 </td>
   <td style="text-align:right;"> 0.3149 </td>
   <td style="text-align:right;"> 0.1371 </td>
   <td style="text-align:right;"> -0.1231 </td>
   <td style="text-align:right;"> 0.890 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> USMV </td>
   <td style="text-align:left;"> iShares MSCI USA Min Vol Factor </td>
   <td style="text-align:right;"> -0.0204 </td>
   <td style="text-align:right;"> 0.7709 </td>
   <td style="text-align:right;"> -0.2047 </td>
   <td style="text-align:right;"> -0.0426 </td>
   <td style="text-align:right;"> 0.0200 </td>
   <td style="text-align:right;"> 0.2448 </td>
   <td style="text-align:right;"> 0.1693 </td>
   <td style="text-align:right;"> 0.857 </td>
  </tr>
</tbody>
</table>

![](images/pagebreak5.png)


# Forward Looking Expected Performance Metrics

The table below presents two different sets of performance metrics for each fund.  The first three are the in sample Excess Return, Sharpe ratio and Information Ratio as reported in Table 1. The second set are the forward looking or expected performance metrics as implied by each funds loading onto the factor model. For each fund, I assume that the Alpha is 0 and that the idiosyncratic volatility of the fund will persist. I measure idiosyncratic volatility of each fund as the RMSE of the regression of the funds returns onto the six factors. The Information Ratio is computed by subtracting one from the funds loading on the market and then computing the Sharpe Ratio for this portfolio.

![](images/pagebreak6.png)

<table class="table" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption><span id="tab:unnamed-chunk-3"></span>Table 3: In-Sample and Expected Performance Metrics of Based on a Six-Factor Framework</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> Fund </th>
   <th style="text-align:left;"> Fund Name </th>
   <th style="text-align:right;"> Years of Data </th>
   <th style="text-align:right;"> Excess Return </th>
   <th style="text-align:right;"> Sharpe Ratio </th>
   <th style="text-align:right;"> Info Ratio </th>
   <th style="text-align:right;"> E ER </th>
   <th style="text-align:right;"> E SR </th>
   <th style="text-align:right;"> E IR </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> BRK2 </td>
   <td style="text-align:left;"> Berkshire Hathaway 10/1976-3/2017 </td>
   <td style="text-align:right;"> 40.40 </td>
   <td style="text-align:right;"> 18.60 </td>
   <td style="text-align:right;"> 78.8 </td>
   <td style="text-align:right;"> 63.60 </td>
   <td style="text-align:right;"> 11.50 </td>
   <td style="text-align:right;"> 79.60 </td>
   <td style="text-align:right;"> 46.7000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BRK </td>
   <td style="text-align:left;"> Berkshire Hathaway 10/1976-12/2022 </td>
   <td style="text-align:right;"> 46.20 </td>
   <td style="text-align:right;"> 17.70 </td>
   <td style="text-align:right;"> 76.6 </td>
   <td style="text-align:right;"> 59.80 </td>
   <td style="text-align:right;"> 10.60 </td>
   <td style="text-align:right;"> 75.60 </td>
   <td style="text-align:right;"> 39.0000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> USMV </td>
   <td style="text-align:left;"> iShares MSCI USA Min Vol Factor </td>
   <td style="text-align:right;"> 11.90 </td>
   <td style="text-align:right;"> 10.90 </td>
   <td style="text-align:right;"> 94.1 </td>
   <td style="text-align:right;"> 33.30 </td>
   <td style="text-align:right;"> 8.03 </td>
   <td style="text-align:right;"> 71.70 </td>
   <td style="text-align:right;"> 17.3000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MTUM </td>
   <td style="text-align:left;"> iShares MSCI USA Momentum Factor ETF </td>
   <td style="text-align:right;"> 10.40 </td>
   <td style="text-align:right;"> 11.70 </td>
   <td style="text-align:right;"> 76.6 </td>
   <td style="text-align:right;"> 11.80 </td>
   <td style="text-align:right;"> 9.81 </td>
   <td style="text-align:right;"> 62.70 </td>
   <td style="text-align:right;"> 57.2000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> DGRO </td>
   <td style="text-align:left;"> iShares Core Dividend Growth </td>
   <td style="text-align:right;"> 9.25 </td>
   <td style="text-align:right;"> 10.60 </td>
   <td style="text-align:right;"> 73.5 </td>
   <td style="text-align:right;"> 22.60 </td>
   <td style="text-align:right;"> 7.97 </td>
   <td style="text-align:right;"> 61.50 </td>
   <td style="text-align:right;"> 27.5000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FCPVX </td>
   <td style="text-align:left;"> FIDELITY SMALL CAP VALUE </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 9.74 </td>
   <td style="text-align:right;"> 48.1 </td>
   <td style="text-align:right;"> -8.37 </td>
   <td style="text-align:right;"> 9.65 </td>
   <td style="text-align:right;"> 57.10 </td>
   <td style="text-align:right;"> 38.4000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FLPSX </td>
   <td style="text-align:left;"> FIDELITY LOW PRICED STOCK </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 8.59 </td>
   <td style="text-align:right;"> 51.2 </td>
   <td style="text-align:right;"> -9.56 </td>
   <td style="text-align:right;"> 7.75 </td>
   <td style="text-align:right;"> 55.40 </td>
   <td style="text-align:right;"> 20.8000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SIZE </td>
   <td style="text-align:left;"> iShares MSCI USA Size Factor ETF </td>
   <td style="text-align:right;"> 10.40 </td>
   <td style="text-align:right;"> 10.90 </td>
   <td style="text-align:right;"> 69.3 </td>
   <td style="text-align:right;"> -31.00 </td>
   <td style="text-align:right;"> 7.91 </td>
   <td style="text-align:right;"> 53.40 </td>
   <td style="text-align:right;"> 32.3000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> VLUE </td>
   <td style="text-align:left;"> iShares MSCI USA Value Factor ETF </td>
   <td style="text-align:right;"> 10.40 </td>
   <td style="text-align:right;"> 9.44 </td>
   <td style="text-align:right;"> 55.4 </td>
   <td style="text-align:right;"> -41.70 </td>
   <td style="text-align:right;"> 7.79 </td>
   <td style="text-align:right;"> 52.10 </td>
   <td style="text-align:right;"> 18.8000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> IWM </td>
   <td style="text-align:left;"> iShares Russell 2000 ETF </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 8.14 </td>
   <td style="text-align:right;"> 39.6 </td>
   <td style="text-align:right;"> -39.10 </td>
   <td style="text-align:right;"> 9.72 </td>
   <td style="text-align:right;"> 50.00 </td>
   <td style="text-align:right;"> 32.6000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> BRK3 </td>
   <td style="text-align:left;"> Berkshire Hathaway 1/2013-12/2022 </td>
   <td style="text-align:right;"> 10.90 </td>
   <td style="text-align:right;"> 13.50 </td>
   <td style="text-align:right;"> 81.1 </td>
   <td style="text-align:right;"> 29.00 </td>
   <td style="text-align:right;"> 6.52 </td>
   <td style="text-align:right;"> 47.60 </td>
   <td style="text-align:right;"> -5.2200 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> SPY </td>
   <td style="text-align:left;"> SPDR S&amp;P 500 ETF Trust </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 9.33 </td>
   <td style="text-align:right;"> 58.7 </td>
   <td style="text-align:right;"> 10.40 </td>
   <td style="text-align:right;"> 6.85 </td>
   <td style="text-align:right;"> 46.30 </td>
   <td style="text-align:right;"> -3.7000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> QUAL </td>
   <td style="text-align:left;"> iShares MSCI USA Quality Factor ETF </td>
   <td style="text-align:right;"> 10.20 </td>
   <td style="text-align:right;"> 12.10 </td>
   <td style="text-align:right;"> 79.2 </td>
   <td style="text-align:right;"> 19.50 </td>
   <td style="text-align:right;"> 6.91 </td>
   <td style="text-align:right;"> 45.90 </td>
   <td style="text-align:right;"> -0.0573 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FAGIX </td>
   <td style="text-align:left;"> FIDELITY CAPITAL &amp; INCOME </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 6.47 </td>
   <td style="text-align:right;"> 57.1 </td>
   <td style="text-align:right;"> 14.90 </td>
   <td style="text-align:right;"> 3.85 </td>
   <td style="text-align:right;"> 43.50 </td>
   <td style="text-align:right;"> -36.9000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FBALX </td>
   <td style="text-align:left;"> FIDELITY BALANCED </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 7.17 </td>
   <td style="text-align:right;"> 59.8 </td>
   <td style="text-align:right;"> 14.80 </td>
   <td style="text-align:right;"> 4.71 </td>
   <td style="text-align:right;"> 42.70 </td>
   <td style="text-align:right;"> -48.2000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MCO </td>
   <td style="text-align:left;"> MOODYS CORP COM USD0.01 </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 14.80 </td>
   <td style="text-align:right;"> 47.7 </td>
   <td style="text-align:right;"> 11.50 </td>
   <td style="text-align:right;"> 8.26 </td>
   <td style="text-align:right;"> 38.00 </td>
   <td style="text-align:right;"> 14.6000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> QQQ </td>
   <td style="text-align:left;"> Invesco QQQ Trust </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 14.90 </td>
   <td style="text-align:right;"> 78.4 </td>
   <td style="text-align:right;"> 63.40 </td>
   <td style="text-align:right;"> 5.57 </td>
   <td style="text-align:right;"> 30.10 </td>
   <td style="text-align:right;"> -25.2000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> FDGRX </td>
   <td style="text-align:left;"> Fidelity Growth Company </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 14.20 </td>
   <td style="text-align:right;"> 72.9 </td>
   <td style="text-align:right;"> 51.00 </td>
   <td style="text-align:right;"> 5.55 </td>
   <td style="text-align:right;"> 28.60 </td>
   <td style="text-align:right;"> -21.9000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MSEQX </td>
   <td style="text-align:left;"> Morgan Stanley Institutional Growth Fund </td>
   <td style="text-align:right;"> 16.70 </td>
   <td style="text-align:right;"> 12.10 </td>
   <td style="text-align:right;"> 51.1 </td>
   <td style="text-align:right;"> 7.76 </td>
   <td style="text-align:right;"> 1.13 </td>
   <td style="text-align:right;"> 5.05 </td>
   <td style="text-align:right;"> -53.5000 </td>
  </tr>
</tbody>
</table>

There are a number of interesting things to note in this table.  First, despite having strong in-sample performance metrics the expected performance metrics of QQQ, FDGRX, and MSEQX are poor and expected to have negative Information Ratios.  These funds load negatively on the HML factor and have benefited from the relative strength of growth stocks over the past decade but are expected to perform poorly when one uses the sixty-six year experience of the HML factor to look forward.  The best funds include: USMV, MTUM and DGRO.  These funds are expected to outperform the S&P 500 -- excess returns of 8-9% versus 7% for SPY and Sharpe Ratios of 60-70 versus 46 for SPY. Surprisingly, the expected performance of QUAL is on par with that of SPY.  The modes performance of QUAL is the result off having negative loadings on SMB and HML that offset the benefits from loading on QUAL.  

