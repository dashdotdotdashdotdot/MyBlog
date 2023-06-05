---
title: Thoughts on the WACC
author: DWD
date: '2023-05-30'
categories:
  - Musings
tags:
  - WACC
slug: thoughts-on-the-weighted-average-cost-of-capital
---

In this methodological note, we discuss our thinking around our approach for determining a value for the weighted average capital.  Rather than performing an elegant calculation of the WACC for each name, we deploy an initial reasonable number and then expect the user to provide their own value (or term structure) for the WACC.  We also provide a tool to assess the sensitivity of valuation to the value used. 


# Why?

## First,

To date, we are focused on the concept of Enterprise Value---how much it costs to buy the company cash free and debt free. If you own a house with a 30-year mortgage at a low rate, the mortgage does not impact the value of the home as the mortgage would typically not be transferable.  By defining enterprise value as above, the assumption is that neither the debt nor the cash is transferable.

## Second,

One approach in corporate finance is to determine the _unlevered beta_ of the company and to use this concept to compute a larger WACC for a company with more systematic risk.  The theory behind this approach assumes that investors are risk adverse and that idiosyncratic risk can be diversified. My read of modern finance theory is that a single factor CAPM has been rejected empirically.  In fact, there is evidence that you can achieve high risk adjusted returns by "Betting Against Beta."  Others have argued that you can achieve high risk adjusted returns by investing in stocks with low volatility and low risk of financial distress.  There also is the question of what is a good portfolio referential return to any investor, which is likely to differ across investors. Put differently, not all investors will have the same hurdle rate for the same investment.

## Third,

In many cases, I think it will be difficult to make a compelling case that the risk adjusted return an investor investing in the US should _ex ante expect_ is materially  different than the 10-year treasury rate plus 400bps on a US firm. Applying the same benchmark WACC facilitates comparisons of valuations across firms.












