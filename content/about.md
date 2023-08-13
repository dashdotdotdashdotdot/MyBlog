---
title: The Valuation Space
author: Douglas W. Dwyer
output: 
  html_document:
    css: styles.css
---

I remember my uncle telling me a good way to lose money was buying companies that were doing well. He explained that companies that are doing well the market knows are doing well and are priced accordingly. To make money buying a company that is already doing well the company will have to do even better. If the company ends up doing just okay, the price will go down and you will lose money. My uncle was a sell-side analyst. When he made a buy and sell recommendations, he was assessing whether or not the firm would exceed what the market expected of the firm.

The intent of "Valuation Space" is to provide a framework that translates the price of a company's common stock into a representation of what the market expects of the company in terms of its ability to deliver free cash flow to its stakeholders into the future. The coverage is the non-financial firms in the S&P 500 and the analyses are updated once a quarter to reflect the most recent financial information (as derived from SEC filings). "Valuation Space" is designed to be accessible to both the interested retail investor and the _quant_ who wants to learn value investing.

The valuation space is a variation on "Expectations Investing". We provide one possible trajectory for the firm's future cash flow to the firm that is consistent with the current enterprise value of the firm. The user can assess whether the trajectory is reasonable for the company. The user can also experiment with other possible trajectories -- the framework is interactive. If the user believes the company can do better than the trajectories implied by the market, then one could consider buying the company.

The framework has been both verified and validated. Using our codebase, we can get the identical valuation for a high-profile name as well an established valuation professor, which is one verification test of our code base. The framework also identifies names that a value investor is unlikely to invest in. We by show that a well-known value investor does not invest in these names, which constitutes one validation test of the framework [see Single Name Report](https://douglasdwyer.netlify.app/post/2023/06/10/valuation-analysis/). Of course, further verification tests and validation tests of framework will lead to further enhancements to both the data and the methodology.

The Valuation Space has three pillars: a Dashboard, a Single Name Report and a Blog.

# Powered by a Dashboard

The core or the valuation space is the dashboard, which provides the user with the ability to bring up a company and examine a trajectory for sales, margin, asset turnover, cost of capital and the tax rate that is consistent with the valuation using the most recent financial statement information and the market price as of the end of the most recent quarter. The user can customize this trajectory to examine the implications of their own views on the firm's possible trajectories. The dashboard also does a value attribution analysis of the S&P 500 as a portfolio. The dashboard is able to perform multiple analyses in real-time for the user with up-to-date information for any of the non-financial firms in the S&P 500. When interacting with the dashboard, the server in the cloud is running R (the statistical programming language). The link is at the bottom of each page of this blog; it will open in a new window. It can take a minute to load. It may say "please wait" during this interval. 

# And A Single Name Report

We also have developed a facility to run a report on a single name, which is accomplished by selecting a new ticker. The Single Name Report is intended for an investor considering buying or selling shares to a specific name. It provides projections that are consistent with the current market valuation and a statement as to whether the name is suitable to a value investor at the current price. This report enables the investor to compare their views as to where they see the firm headed to a baseline view of market expectations.

The full report is generated on the fly in the cloud using R code. One can export it as a pdf using one's browser. It may take about a minute to load and about a minute to run on a new firm. The link is at the bottom of each page of this blog, and it will open in a new window.

# The Blog

The blog serves as a mechanism to organize and release multiple types of content. It provides case studies that analyze how the market is valuing a given firm using the Dashboard and the corresponding code base. It also has posts that document the methodology used in the dashboard, and introduces methodological enhancements.


# Different From Other Approaches?

One approach to "Expectations Investing" involves the use of analyst forecasts for determining what the market expects in terms of future revenue growth, profitability and so forth and then solving for the horizon required to justify the current value of the firm. Doing this approach well requires care as analysts' forecasts are based on non GAAP accounting. Therefore, using these forecasts requires understanding the difference between GAAP and non-GAAP earnings and getting comfortable with the differences for each name. Consequently, some value investors are of the view that you should only invest in a limited number of companies that you understand well.

The approach here is somewhat different. All financial statement information is drawn directly from SEC filings that use GAAP accounting. The methodology determines sales growth, asset turnover, tax rates and initial margin from history and then solves for the implied sustainable margin for each firm that is implied by the current enterprise value. For investors who want to invest in a limited number of names, these trajectories are intended to provide a starting point for a more detailed analysis.

Alternatively, one could use this framework to derive possible "alpha signals" across all the non-financial firms in the S&P 500 and develop a trading strategy that over weights the names with strong alpha signals. Before implementing such a strategy, one would want to back test it and determine its historical risk and return performance over a long history. Backing testing traditional value investing over a long history, in contrast, is challenging because the decision making process of the traditional value investor cannot be reduced an explicit set of decision rules that a back test requires.

# Technology behind the Valuation Space

Users may be interested in how I have implemented the Valuation Space.

The blog is written in blogdown. My implementation process started by following a presentation of [Yi Hui](<https://slides.yihui.org/2022-useR-blogdown.html#1>). The blog is hosted by the company Netlify.

The dashboard and single name report use "shiny" as the "UI front end" to interact with a server running R. The server is hosted by the company that developed Shiny, Posit (formerly known as rStudio). When one uses the dashboard and the single, a 'server is booted' in the cloud. Consequently, one may need to wait for the server to "boot" when launching the dashboard or the single name report.
