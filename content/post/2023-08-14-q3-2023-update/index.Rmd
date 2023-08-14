---
title: Q3 2023 Update
author: Douglas Dwyer
date: '2023-08-14'
slug: q3-2023-update
categories:
  - Model Management
tags:
  - Methodolgy Enhancements
---

In August of 2023, we did our first data update for the Valuation Space so that the data would be current as of the end of Q2 2023.  The process involves downloading the new files that the SEC releases after the end of the quarter and reprocessing the data.

In this update, we mitigated the following data issues:

1. We note that AcuityAds Holdings Inc (ATY) changed it's name to iIlumin Holding Inc, ILLM is the new ticker.

2. While Dish Networks (DISH) was dropped from the S&P 500, we choose to keep it in the sample.

3. Palo Alto Networks (PANW) was added to the S&P 500, so we now cover it.

4. For PKG we divided its Market Cap by 1000 to address a units issue in the shares outstanding information that was in the most recent data that we get from the SEC.

5. We used the tag "RegulatedAndUnregulatedOperatingRevenue" as revenue when other measures of revenue were not available. This enabled us to compute accurate revenue information for DTE.

6. When both "OperatingIncomeLoss" and  
	"IncomeLossFromContinuingOperationsBeforeIncomeTaxesExtraordinaryItemsNoncontrollingInterest" were populated for the same time period we prioritized the former, which yielded accurate operating income information for BIO.
	
7. Instead of all valuations being based on the same underlying methodology, we now provide the user with three different valuation methodologies.  The baseline solves for the implied sustainable margin after determining reasonable estimates of the other trajectories. The maximum likelihood method chooses from a set of pairs of of initial growth rates and implied sustainable margins that are consistent with the valuation of the firm and chooses the most likely pair.  The third methodology chooses the preferred methodology of the two for the name at hand.  The preferred methodology is determined as a result of an outlier analysis. For more information see blog post "Methodological Advance" (2023/08/13).

8. Currently we are not covering BF.B,  STZ,  MKC,   XEL, PCAR, ROL,  TSN, APA even though they are non-financial firms in S&P 500.  For some reason, our algorithm is not finding these firms in the SEC filings.  Diagnosing this issue requires further research.
