---
title: The Valuation Space Blog
author: Douglas W. Dwyer
output: 
  html_document:
    css: styles.css
---

[<img src="/./about_files/cliff-event7088.jpg" alt=""  height="300px" />](https://www.linkedin.com/in/douglas-dwyer-dd/)


Begun in May 2023, this blog focuses on the issue of corporate valuations. While the framework applies to all non-financial corporations, I am starting with what I can see---where I can see financial statements and prices.  My current source of financial statements is Edgar so my focus is on firms that have to file their statements with the U.S. Securities Exchange Commission. I also have access to equity research available to a retail investor.

The approach is both standard and unique. It uses projections and standard DCF calculations to compute the value of an investment. What makes it unique is it does the reverse.  It uses standard DCF and a market valuation to solve for the projections that are consistent with the valuation. These projections provide the starting point for the analysis and provides insights for how the market views a given name. It also allows many different types of companies to be analyzed with a single framework using current information in a semi-automated fashion.

I have yet to see equity research that says that a stock is mis-priced by an order of magnitude or larger. I will not say something is mispriced either, but I will draw attention to cases where the current valuation seems very expensive or very cheap and ponder what the market sees that I am missing.

### Trade Secrets?

I am an admirer of the legendary photographer Ansel Adams who said: "I have no secrets of craft, I answer as best I can inquiries on equipment, methods, and relevant situations. I have also used the detailed captions of my technical books as a means of teaching by example and these have apparently been one of the books most appealing aspects." It is this standard that I aspire to in this context (within reason).



### Powered by a Dashboard

The blog is powered by a shiny dashboard that analyzes over 400 firms including the non-financial firms in the S&P 500.  It allows the user to analyze the current valuation of a firm from the perspective of a Discounted Cash Flow calculation. The dashboard runs on a _server in the cloud_ hosted by the company Posit (formerly rStudio).  The posts in this blog take advantage of the code base behind the dashboard...  When interacting with the dashboard, the _server in the cloud_ is running R (the statistical programming language).  The link is at the bottom of the page, which will open in a new tab.   It can take a minute to load.  It may say "please wait" during this interval.


### And a Single Name Report

We also have developed a facility to run a report on a single name, which is accomplished by selecting a new ticker.  The report provides insight into how the name is valued and whether or not a value investor would consider it. The full report is generated on the fly in the cloud using R code. One can export it as a pdf using one's browser.  The link is at the bottom of the page, which will open in a new tab.  It may take about a minute to load and about a minute to run on a new firm.




