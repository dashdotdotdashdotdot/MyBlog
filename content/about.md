---
title: Valuation Space
author: Douglas W. Dwyer
output: 
  html_document:
    css: styles.css
---

There are many methods for investing in equities. Strategies span different techniques, research methods, and complexities. We are most interested in valuation concepts, and how the market prices equities and what the equity price says about the markets view on the future of the firm.

One reason to invest is if you expect a firm's cash flows to exceed the market's expectations. 

Such investments requires both translating market prices into cash flow expectations and developing one's own view. Much of the research available to retail investors lacks the exact details on how the _Fair Value_ is determined. Consequently, it is challenging for retail investors to develop their own views. _Valuation Space_ aims to close this gap by enabling investors to compare their personal outlook for the firm's cash flows with that implied by equity prices.

This evaluation involves three basic steps: 

1.	Convert the market's current valuation of the firm into a stream of cash flows that mirror the market’s expectations. 
2.	Establish your own perspective regarding what value is realistic, plausible, and probable, then make comparisons. 
3.	Contemplate purchasing, if your viewpoint aligns favorably with the market’s stance. 

This form of analysis is a type of “Expectations Investing,” a subset of “Value Investing.”

_Valuation Space_ intends to provide an environment where the investor can easily move between a valuation of a company and cash flow trajectories consistent with that valuation. The framework initially provides trajectories of cash flows that are consistent with the current firm valuation. These trajectories can be customized. The coverage is focused on the non-financial firms in the S&P 500. The underlying data are updated regularly. 

_Valuation Space_ is designed for at least two groups. The first group consists of retail investors interested in an accessible, structured approach to stock selection.  The second group comprises _the quants_ with a background in quantitative methods and data science who are interested in learning corporate finance and value investing. 

# What can be done with Valuation Space?

We want _Valuation Space_ to be a place in which investment ideas can be evaluated and tested. We welcome collaboration along these lines.  We intend to update the data underlying the _Valuation Space_ once a quarter and to write new posts regularly.  Further services we could provide include:

1) Ability to download the data behind _Valuation Space_ including both historical financial statement information and the calculated projections for all the firms that we cover
2) Seminar(s) on the theory underlying the _Valuation Space_
3) Training and access to the code base behind _Valuation Space_
4) Custom research on a specific firm and its peer group
5) Customized backtesting of trading strategies utilizing _Valuation Space_ metrics

### What am I doing with it?

I am using the _Valuation Space_ framework to re-evaluate my investment strategy. 

I buy and hold index funds, and I have enjoyed solid returns in the past few decades. While index funds will likely continue to be my core strategy, I may also create a portfolio of firms that I think: (1) have a promising future; (2) are run by honest people; and (3) are favorably reasonably price. I am finding _Valuation Space_ to be useful for this purpose.

In building out _Valuation Space_, I have been surprised by the number of firms whose valuations seem surprisingly rich (see the Post: Ordinary Returns for Extraordinary Performane (2023/08/14)). Through my index funds, I have exposure to such firms. I am considering taking small short positions on these firms as a hedge.  The _Valuation Space_ appears useful at identifying such firms. Before pursing such a strategy, however, I want to back test its performance using a large data set with a long history. I am in the process of building out this data set. I plan to post what I learn from such back tests.

# Testing the Framework

Among the numerous tests of the framework that we have conducted, two stand out as particularly noteworthy. First, we were able to achieve an identical valuation for a high-profile name as an established valuation professor. We consider this to be a verification test (see the post "Ordinary Returns for Extraordinary Performance" (2023/08/14)). Second, we identify names that are not suitable for a value investor at current prices. We can demonstrate that a well-known value investor avoids investing in these names. This represents a validation test of the framework (see the post "Validation of the Value Zone" (2023/08/16)). Conducting additional verification and validation tests of the framework will result in further refinements to both the data and the methodology.

# Different From Other Approaches?

One approach to "Expectations Investing" involves utilizing analyst forecasts to discern the market's expectations concerning future revenue growth, profitability, and more. This approach then calculates the required horizon to justify the firm's current value. Executing this method effectively requires caution due to analysts' reliance on non-GAAP accounting. Consequently, understanding the contrasts between GAAP and non-GAAP earnings and becoming comfortable with these disparities is essential when employing such forecasts. As a result, certain value investors only invest in a limited number of companies that they have researched thoroughly.

The approach presented here diverges somewhat. All financial statement information is drawn directly from SEC filings that use GAAP accounting. The methodology establishes sales growth, asset turnover, tax rates, and initial margins based on historical data. Subsequently, it solves for the sustainable margin implied by the prevailing Enterprise Value for each firm. For investors who want to invest in a limited number of names, these trajectories are intended to provide a starting point for a more detailed analysis.

Alternatively, one could use this framework to derive possible "alpha signals" across all the non-financial firms in the S&P 500 and develop a trading strategy that overweights the names with strong alpha signals. Before implementing such a strategy, one would want to backtest it and determine its historical risk and return performance over a long history. In contrast, traditional value investing poses challenges for historical backtesting, primarily due to the inherent complexity of the decision-making process, which resists reduction into a set of explicit rules essential for conducting a backtest.


# How? 

At present, _Valuation Space_ has three components: A Blog, The Gym, and an Exercise Sequence.  The blog is what you are currently reading.  The Gym is a place where many valuation exercises (or analyses) can be conducted, and An Exercises Sequence is a specific sequence of exercises that tell a narrative regarding how the market values a specific company. 

The blog posts are organized into categories. Methodology posts are explanations of how _Valuation Space_ works.  General Theory posts are my musings on topics that are not specific to the _Valuation Space_ framework.  Case Studies include posts that present a view on a specific firm or set of firms utilizing the _Valuation Space_ framework.  State of the World posts present useful information that is updated as required regarding the state of the world (e.g., example time series of various interest rate benchmarks).  Model Management posts include posts that describe updates to the data that underlies the framework, posts that describe enhancements to the methodology, and posts the document efforts to verify and validate the framework.

The blog is created using blogdown. We initiated the implementation process by following a presentation by <a href="https://yihui.org/en/2022/06/user-blogdown/" target="_blank">Yihui Xie</a>. Netlify hosts the blog. For _The Gym_ and _An Exercise Sequence_, "shiny" is employed as the "UI front end" to interact with a server that runs R. This server is hosted by Posit (formerly RStudio), the developer of Shiny.  