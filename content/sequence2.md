---
title: Excecutive Summary
author: Douglas W. Dwyer
output: 
  html_document:
    css: styles.css
---

# An Unified Approach to Value Investing


One approach to long-term investing involves allocating the majority of one's capital to well-diversified funds and the remainder to a selection of stocks considered undervalued with promising future potential. Valuable tools for choosing which funds and stocks to invest in include frameworks for performance attribution and valuation. The intent of Value Space is to make a set of such tools accessible to the retail investor.

Extensive research has argued that a fund manager can outperform the S&P 500 over an extended period by structuring their portfolio to overweight specific factors, a strategy known as factor investing. For instance, a systematic value investor focuses on factors associated with robust fundamentals. As systematic value investing is rule based, one can back test various strategies by doing a performance attribution on how the strategy would have worked.

A traditional value investor, in contrast, selects companies with a substantial safety margin, where this margin of safety is defined as the difference between the current valuation and the investor's assessment of the intrinsic value. Traditional value investing involves substantial judgement and extensive analysis. Consequently, back testing a traditional approach is challenging. Nevertheless, one can do a performance attribution of Berkshire Hathaway (Berkshire Hathaway is a publicly traded firm that has a long track record and is known for the value investing strategy associated with its CEO, Warren Buffett). A large portion of Buffett's Alpha has been attributed to his portfolio loading on the "Quality Minus Junk (QMJ)" and "Betting Against Beta (BAB)" factors. 

Traditional value investing necessitates the ability to determine one's own view on a company's value, typically through a discounted cash flow (DCF) valuation. This process involves forecasting revenue, operating margins, reinvestment, and then calculating the DCF value of the company based on a given weighted average cost of capital (WACC) and a tax rate. Value Space, on the other hand, provides a solution for a set of paths that align with the current valuation of non-financial firms in the S&P 500. Specifically, it estimates growth, asset turnover, and initial margin based on the company's historical performance and calculates the long-term margin required to align the implied DCF value of the firm with the market's current valuation. 

This approach enables one to readily identify companies with 'outlier valuations.' An outlier valuation is one that necessitates either significant revenue growth, substantial operating margin expansion, or both, for the value of the projected cash flow to align with the current value of the firm. Such companies must perform exceptionally well to offer even modest returns to their investors. We have developed a 'value zone,' representing where a firm can be considered reasonably priced. We have demonstrated that Berkshire Hathaway rarely acquires a firm that falls outside of the value zone.

A simple, rule-based strategy for utilizing the value zone is to purchase a value-weighted portfolio of all assets within the value zone. We conducted backtests of such a strategy using our performance attribution framework. Specifically, value-weighted portfolios spanning three different size groups, comprised exclusively of value zone firms, outperformed market portfolios (which include all firms within the size category and are value-weighted). The differences in performance are most pronounced for mid-sized firms and reached a Sharpe Ratio of 0.751 between 1976 and 2017. Conversely, we also demonstrate that a portfolio of firms located outside the value zone underperforms the market. These performance variations are primarily the result of in-zone firms exhibiting positive loadings on the factors QMJ and BAB, while out-of-zone firms exhibit negative loadings on these factors. This rule-based strategy involves purchasing all firms in the value zone, regardless of their future prospects.

One could potentially achieve better results by exclusively investing in firms situated in the value zone that also show promise for the future. The Value Zone enables one to evaluate whether a particular company offers a substantial margin of safety. Starting with the projections provided by the Value Zone, individuals can compare them with their own assessments of the company's future prospects, including factors such as growth and margin. The percentage difference in the valuation between these two perspectives represents the margin of safety inherent in the current market valuation. Purchasing firms with a significant margin of safety that are also within the Value Zone is one approach to investing in companies that are both undervalued by the market and have a promising future. As the determination of which firms have a promising future is subjective, conducting backtests for a rule-based approach to selecting such firms could be challenging.

# Key References:

## Buffett's Alpha:

I utilize the performance attribution framework from the paper "Buffett's Alpha" (Frazzini, Kabiller & Pedersen, 2018, Financial Analysts Journal) to update the attribution of Berkshire Hathaway's returns and analyze its performance over various time periods. The same framework is also applied to assess the performance of multiple mutual funds. In my post titled "How to Beat the S&P 500 By Not Trying," I identify two ETF Factor funds that load on QMJ and BAB. This performance assessment framework is subsequently used to backtest investments both inside and outside of the Value Zone in my post titled "Performance Implications of Being in the Zone."

## Factor Investing

My understanding of factor investing is heavily influenced by two articles written by John Cochrane: "New Facts in Finance" and "Portfolio Advice for a Multifactor World," both published by the Federal Reserve Bank of Chicago in 1999. I summarize my understanding of Factor Models and the six-factor framework I utilize in the post titled "Factor Models as I Understand Them.""

## DCF Calculations

My implementation of a DCF calculation builds on the work of Aswath Damodaran. It is described in the posts "Ordinary Returns for Extraordinary Performance" and "The Crux of the Damodaran Valuation Framework." The post "Using Models to Understand Prices" places the new construct of an 'implied sustainable margin' within the context of similar constructs in finance, such as yields, spreads, and option-implied volatility.

(last revised October 31, 2023)
