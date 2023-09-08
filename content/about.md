---
title: Valuation Space
author: Douglas W. Dwyer
output: 
  html_document:
    css: styles.css
---

One reason to invest is if you expect a firm's cash flows to exceed the market's expectations. Making such investments requires both translating market prices into cash flow expectations and developing one's own view. Much of the research available to retail investors lacks the exact details on how the _Fair Value_ was determined. Consequently, it is challenging for retail investors to develop their own views. _Valuation Space_ aims to close this gap by enabling investors to compare their personal outlook for the firm's cash flows with that implied by market prices.

Making such an evaluation involves three steps: the first step is to convert the present valuation of the firm into a stream of cash flows that mirror the market's expectations. The subsequent step is to establish your own perspective regarding what is realistic, plausible, and probable, then make comparisons. Lastly, contemplate purchasing if your viewpoint aligns favorably with the market's stance. This form of analysis can be categorized as a type of "Expectations Investing," a subset of "Value Investing."

The intent of _Valuation Space_ is to provide an environment where the investor can easily move between a valuation of a company and trajectories for cash flows consistent with that valuation. The framework initially provides trajectories of cash flows that are  consistent with the current valuation of the firm. These trajectories can be customized. The coverage is focused on the non-financial firms in the S&P 500. The underlying data are updated regularly. 

We aim for _Valuation Space_ to be valued by at least two groups. The first group consists of retail investors interested in an accessible, structured approach to stock selection.  The second group comprises _the quants_ with a background in quantitative methods and data science who are interested in learning value investing. 

Valuation Space has three components: The Gym, a Single Name Report and a Blog.

# The Gym

La plaza mayor of Valuation Space is The Gym.  We use The Gym to develop narratives about the valuation of a firm or a group of firms.  In The Gym, users can run numerous exercises on the fly using current financial information and market prices for a sample of US-based non-financial firms (currently the sample consists of 432 firms, 391 of which are in the S&P 500).  For each firm in our sample, The Gym is pre-loaded with trajectories for sales, margin, asset turnover, the cost of capital and the tax rate that are consistent with the current price of the firm. 

You can customize these trajectories to examine the implications of your own views on the firm's possible trajectories and the corresponding valuation. Further, The Gym also performs a value attribution analysis of the firms in the sample.

The Gym is a user interface (UI) frontend that interacts with a server in the cloud running R. Users can customize trajectories for sales, margin, asset turnover, taxes and the cost of capital.[^1]  For a tour of The Gym please contact me at douglas.dwyer@me.com. 

[^1]: For example, if you input 20, 20, 2 in the "Growth Values as a Vector" widget, the server creates a vector, c(20, 20, 2), which will be used to override the pre-populated trajectory for revenue growth.  This vector will be used to generate a smooth growth trajectory where growth is 20% in year 1, 20% in year 5, and 2% in year 10.  All the exercises are recalculated on the fly with respect to this new growth trajectory.  Further, if one inputs 1, 10, 20 in the widget "Time Points as a Vector," the new smooth growth trajectory will be extended to maintain growth at 20% for the first 10 years and then tapering off to 2% by year 20.


# The Single Name Report

We have also developed a feature that allows you to generate a report for a single company by selecting a new ticker symbol. The Single Name Report provides a concise narrative summary of the key analyses conducted within The Gym. This narrative is designed for investors who are contemplating buying or selling shares of a specific company. It includes projections that align with the current market valuation and a determination of whether the company is a potentially suitable option for value investors at its current price. This report empowers investors to compare their own perceptions of the company's future trajectory with the baseline expectations of the market.

The complete report is dynamically generated in the cloud using R code. You have the option to export it as a PDF through your web browser. It might take approximately one minute to load and an additional minute to generate for a new company. For a tour of _The Single Name Report_ please contact me at douglas.dwyer@me.com. 
# The Blog

The blog functions as a platform for organizing and releasing various types of content. It features case studies that delve into the market's valuation of specific firms using _The Gym_ and its corresponding code base. Additionally, it includes posts that document the methodologies employed in _The Gym_ and introduces methodological enhancements.

# Different From Other Approaches?

One approach to "Expectations Investing" involves utilizing analyst forecasts to discern the market's expectations concerning future revenue growth, profitability, and more. This approach then calculates the required horizon to justify the firm's current value. Executing this method effectively requires caution due to analysts' reliance on non-GAAP accounting. Consequently, understanding the contrasts between GAAP and non-GAAP earnings and becoming comfortable with these disparities is essential when employing such forecasts. As a result, certain value investors only invest in a a limited number of companies that they have researched thoroughly.

The approach presented here diverges somewhat. All financial statement information is drawn directly from SEC filings that use GAAP accounting. The methodology establishes sales growth, asset turnover, tax rates, and initial margins based on historical data. Subsequently, it solves for the sustainable margin implied by the prevailing Enterprise Value for each firm. For investors who want to invest in a limited number of names, these trajectories are intended to provide a starting point for a more detailed analysis.

Alternatively, one could use this framework to derive possible "alpha signals" across all the non-financial firms in the S&P 500 and develop a trading strategy that overweights the names with strong alpha signals. Before implementing such a strategy, one would want to backtest it and determine its historical risk and return performance over a long history. In contrast, traditional value investing poses challenges for historical backtesting, primarily due to the inherent complexity of the decision-making process, which resists reduction into a set of explicit rules essential for conducting a backtest.
 
# Testing the Framework

Among the numerous tests of the framework that we  have conducted, two stand out as particularly noteworthy. First, we were able to achieve an identical valuation for a high-profile name as an established valuation professor. We consider this to be a verification test (see the post "Ordinary Returns for Extraordinary Performance" (2023/08/14)). Second, we identify names that are not suitable for a value investor at current prices. We can demonstrate that a well-known value investor avoids investing in these names. This represents a validation test of the framework (see the post "Validation of the Value Zone" (2023/08/16)). Conducting additional verification and validation tests of the framework will result in further refinements to both the data and the methodology.

# What is Next for Valuation Space?

Currently,  we are developing Valuation Space with the aim of fostering interest and active involvement, and we intend to allow open access to the Blog, the Gym and the Single Name Report, with the data being updated every quarter.

What comes next for valuation space will depend on the nature of the interest and participation that it generates.  Possibilities include:

1) Ability to download the data behind Valuation Space including both historical financial statement information and the calculated projections for all the firms that we cover
2) Seminar(s) on the theory underlying the Valuation Space
3) Training and access to the codebase behind Valuation Space
4) Custom research on a specific firm and its peer group
5) Customized backtesting of trading strategies utilizing Valuation Space metrics



# How? 

Users might be curious about the implementation of Valuation Space. The blog is created using blogdown. We initiated the implementation process by following a presentation by <a href="https://yihui.org/en/2022/06/user-blogdown/" target="_blank">Yihui Xie</a>. Netlify hosts the blog. For The Gym and Single Name Report, "shiny" is employed as the "UI front end" to interact with a server that runs R. This server is hosted by Posit (formerly RStudio), the developer of Shiny.  