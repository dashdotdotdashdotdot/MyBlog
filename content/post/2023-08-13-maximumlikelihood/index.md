---
title: 'Methodological Advance '
author: Douglas Dwyer
date: '2023-08-13'
categories:
  - Methodology
  - Model Management
tags:
  - Theory
slug: maximumLikelihood
---

<script src="{{< blogdown/postref >}}index_files/htmlwidgets/htmlwidgets.js"></script>
<link href="{{< blogdown/postref >}}index_files/datatables-css/datatables-crosstalk.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/datatables-binding/datatables.js"></script>
<script src="{{< blogdown/postref >}}index_files/jquery/jquery-3.6.0.min.js"></script>
<link href="{{< blogdown/postref >}}index_files/dt-core/css/jquery.dataTables.min.css" rel="stylesheet" />
<link href="{{< blogdown/postref >}}index_files/dt-core/css/jquery.dataTables.extra.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/dt-core/js/jquery.dataTables.min.js"></script>
<link href="{{< blogdown/postref >}}index_files/crosstalk/css/crosstalk.min.css" rel="stylesheet" />
<script src="{{< blogdown/postref >}}index_files/crosstalk/js/crosstalk.min.js"></script>

# Introduction

In the Q3 2023 update of the Valuation Space, we introduce a new enhancement that produces more realistic trajectories of free cash flow to the firm in specific cases. The *Valuation Space* framework is a variation on *Expectations Investing*. The concept of Expectations Investing has been explained to me as follows. First, you solve for a trajectory of the firm’s future that is consistent with the current valuation. The next step is to assess this trajectory. If one of the paths is implausible you adjust it and see if you can adjust another path to compensate -– solve for a new trajectory that is consistent with the current valuation. If you cannot, you do not buy the stock at the current price.

In the *Valuation Space* framework, two of the most important parameters are the estimated initial growth and the implied sustainable margin. The estimated initial growth rate is the growth rate that is used to compute the trajectory of revenue growth for the first five years. Between years five and ten we always assume that revenue growth will converge to 2%. The implied sustainable operating margin is used in the projection of operating margins. It is used as the margin that the firm achieves by year five and sustains in perpetuity. The original methodology estimates the initial growth using the average of growth for the company over the past five years and then solves for the implied sustainable margin such that the present discounted value of free cash flows to the firm is equal to the enterprise value of the firm.

These initial trajectories are useful starting points for *Expectations Investing*. One can examine them to determine if one is comfortable with the implications for growth of free cash flows to the firm that the market is expecting. One can also customize them to the incorporate one’s own views on the prospects of the company at hand. Nevertheless, the initial trajectories are sometimes unrealistic. In such cases we seek to enhance the methodology to provide the user with more realistic trajectories that are also still consistent with the market’s current valuation.

## Issues with Original Approach in Certain Cases

In some cases, the original approach will produce trajectories that are not likely or even implausible. Some examples include:

#### Example 1

If the market has great expectations for the earnings growth of a firm even though the recent growth rate of the firm is moderate, then the implied sustainable margin may be implausibly large, while initial growth is more moderate.

#### Example 2

Second, if the company has been through a recent business downturn that the market expects it to recover from (e.g., a casino or a cruise line during the COVID lock down period) it may estimate a negative revenue growth which may imply an unrealistically large implied sustainable margin.

#### Example 3

If a company divests a large portion of its business, it may look like it has declining revenue even though the market expects it to be stable. In these cases, the baseline framework may estimate negative revenue growth and solve for an unrealistically large implied sustainable operating margin.

#### Example 4

If a company just acquired a large business, it may look like it has rapid revenue growth even though the market expects it to be stable. In these cases, the baseline framework may estimate rapid revenue growth and solve for an unrealistically low implied sustainable operating margin.

#### Example 5

A so-called embryonic company may initially burn cash to develop the capability to do something new. For example, a company building the capability to send satellites into orbit. The historical revenue and margin of such a company may convey only very limited information on the company’s potential to deliver free cash flow to its stakeholders.

# The New Methodology

The new methodology complements the existing methodology by mitigating the first five enumerated issues. The idea is that instead of solving for one implied sustainable margin using one estimated growth rates, we solve for 100 implied sustainable margins using a 100 possible initial growth rates that are evenly spaced over the interval of (-.2,1). Consequently, we effectively cover all the possible growth rates between -20% and 100%. Once we have a 100 pairs of initial growth rates and implied sustainable margins, we can choose the most reasonable pair. For example, if an implied sustainable margin of 94% that is paired with an initial growth rate of 5% produces the same valuation as an implied sustainable margin of 35% and an initial growth rate of 20%, clearly the latter is more reasonable than the former as one cannot find an example of a firm that has sustained a 94% margin for multiple years.

One way to formalize this intuitive approach is to fit a parametric bivariate distribution to our sample of firms where the two variables we fit are the estimated initial growth rate and the estimated initial margin. The estimated initial margin is the median margin over the past five years. With a parametric bivariate distribution, we can assign likelihoods to each of the pairs of initial growth rates and implied sustainable margins and choose the most likely pair. We can term this approach the *maximum likelihood approach*. The approach will favor moderation of both growth and margin over cases where one is extreme and the other is moderate. Nevertheless, this approach will disregard whether the firm has experienced recent historical growth.

In our Dashboard, we now allow the user to choose methodology 1,2 or 3. Method 2 is the original approach, Method 3 is the *maximum likelihood approach*. Method 1 is the original methodology unless we view the *maximum likelihood approach* as more reasonable in which case it is the *maximum likelihood approach*. Our process for deciding which approach is preferred is to review the cases where original method produces very large implied sustainable margins or very low initial growth rates and determine which methodology is most appropriate for these cases. As part of the outlier review, we verify the market cap, the revenue and the operating income that we are using for the firm at hand against other sources. Table 1 presents the firms for which Method 2 was chosen over Method 3 as the preferred method.

<div class="datatables html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-1" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"filter":"none","vertical":false,"data":[["LVS","WYNN","RCL","HWM","GEN","VRSK","LLY","NVDA","ROP","MCD","FICO","MCO","CDNS","ISRG","MTCH","TDG","CCL","CSGP","AWK","DD","ANSS","SNPS","ATVI","BIIB","FTV","EXC","IBM","BBWI","BA","MAR","CTRA","NCLH","GE","CZR","APRN"],["Las Vegas Sands","Wynn Resorts","Royal Caribbean Group","Howmet Aerospace","Gen Digital","Verisk","Eli Lilly and Company","Nvidia","Roper Technologies","McDonald's","Fair Isaac","Moody's Corporation","Cadence Design Systems","Intuitive Surgical","Match Group","TransDigm Group","Carnival","CoStar Group","American Water Works","DuPont","Ansys","Synopsys","Activision Blizzard","Biogen","Fortive","Exelon","IBM","Bath &amp; Body Works, Inc.","Boeing","Marriott International","Coterra","Norwegian Cruise Line Holdings","General Electric","Caesars Entertainment","Blue Apron Holdings, Inc."],["228%","112%","111%","109%","107%","100%","99.2%","93.8%","86.5%","82.4%","82%","76.8%","76.4%","75.5%","74.4%","71%","70.2%","69.1%","66.3%","64.3%","62.2%","60.5%","53.6%","52.8%","52.6%","48.4%","40.6%","36.4%","35.7%","29.9%","20.9%","19.3%","17.4%","17.1%","16.9%"],["-20%","-16.4%","-20%","-20%","-12.5%","4.37%","5.1%","23.7%","2.55%","2.02%","7.27%","6.83%","9.71%","13.1%","-9.91%","5.54%","-20%","15.9%","3.14%","-20%","12.9%","12%","3.33%","-6.54%","-5.7%","-8.64%","-9.65%","-18%","-11%","-6.74%","30.6%","-20%","-20%","-20%","-9.93%"],["45.6%","34.4%","42%","21.1%","36.6%","36.5%","32%","38.3%","44.4%","32.4%","28.9%","33.7%","29.9%","35.3%","24%","39.2%","37%","45.2%","59%","27%","37.9%","33.4%","32.3%","24.2%","28%","33.3%","22.6%","10.4%","21.1%","16.6%","19.2%","29.2%","24.3%","26.1%","8.4%"],["24.6%","18%","16.8%","12%","19.8%","30.1%","28.8%","43.9%","28.2%","25.2%","27.6%","27.6%","28.8%","31.9%","15%","26.4%","12%","33.7%","21%","10.8%","29.4%","27.6%","21%","13.8%","15.6%","13.2%","11.4%","6.53%","10.2%","8.94%","7.74%","0.503%","5.93%","1.71%","6.53%"],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0]],"container":"<table class=\"row-border\">\n  <thead>\n    <tr>\n      <th>Ticker<\/th>\n      <th>Name<\/th>\n      <th>OM5<\/th>\n      <th>G<\/th>\n      <th>OM5_ML<\/th>\n      <th>G_ML<\/th>\n      <th>In_SNP500<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":30,"dom":"tip","bFilter":0,"bSort":0,"bProcessing":0,"bPaginate":0,"bInfo":0,"columnDefs":[{"className":"dt-right","targets":6}],"order":[],"autoWidth":false,"orderClasses":false,"lengthMenu":[10,25,30,50,100],"rowCallback":"function(row, data, displayNum, displayIndex, dataIndex) {\nvar value=data[0]; $(this.api().cell(row, 0).node()).css({'background-color':'white'});\nvar value=data[1]; $(this.api().cell(row, 1).node()).css({'background-color':'white'});\nvar value=data[2]; $(this.api().cell(row, 2).node()).css({'background-color':'white'});\nvar value=data[3]; $(this.api().cell(row, 3).node()).css({'background-color':'white'});\nvar value=data[4]; $(this.api().cell(row, 4).node()).css({'background-color':'white'});\nvar value=data[5]; $(this.api().cell(row, 5).node()).css({'background-color':'white'});\nvar value=data[6]; $(this.api().cell(row, 6).node()).css({'background-color':'white'});\n}"}},"evals":["options.rowCallback"],"jsHooks":[]}</script>

The table above presents the 35 names for which we choose to use the *maximum likelihood method* over the *original method*. They have been sorted by the implied sustainable margin calculated using the first method. The columns labeled OM5 and G are the implied sustainable margin and the initial growth rate as computed under the original approach, and the columns labeled OM5_ML and G_ML are the sustainable operating margins and the initial growth rate calculated using the *maximum likelihood method*. The final column indicates whether the firm is currently in the S&P 500.

The companies LVS, RCL, CCL, WYNN, NCLH, CZR, MAR are all in the “consumer discretionary” segment and saw their revenue drop precipitously during the pandemic. The maximum likelihood approach mitigates this issue by increasing G and lowering OM5 to more moderate levels. The G_ML parameters are all positive. BBWI, GE and GEN have all sold substantial business segments over the past five years which accounts for the negative estimated growth and high operating margins that the original method calculated. APRN is an embryonic company that is not in the S&P 500. Its current stock price can be rationalized with moderate revenue growth (5.93%) and a moderate sustainable margin (8.94%) which is more reasonable than negative revenue growth (-9.93%) and a strong sustainable margin (18.1%).

The revenue of CTRA increased dramatically in past five years. CTRA was formed through the merger of Cabot Oil & Gas and Cimarex Energy in Q3 2021. Consequently, the average growth over the past five years is not indicative of future growth which is why we prefer the maximum likelihood approach for this case. The large drop in revenue we see for Exelon between 2021 and 2022 appears to be a change in accounting practices and not indicative of a declining business.[^1] Consequently, the maximum likelihood approach is more relevant in this case as well.

# An Illustration of How the Approach Works

The figure below shows how the approach works for Body and Bath Works (BBWI). In the summer of 2021, L Brands Inc. spun off Victoria’s Secrets and became BBWI. In the process, it reduced its revenue by approximately one-half. Therefore, the historical revenue growth of BBWI is not indicative of its future revenue growth. The original methodology estimated a growth rate of -18% for BBWI and an implied sustainable margin of 41%. When transformed into standard deviations away from the mean, the growth rate is -2.4 standard deviations below the mean and the operating margin is 2.4 standard deviations above the mean. This point is labeled original and is in the lower right-hand corner of the graph below. The solid red curve connecting the points labeled `\(Original\)` and `\(New\)` are all the pairs of initial revenue growth and sustainable margin that are consistent with the valuation of BBWI. The ellipses represent points with equal probability densities under the parametric distribution that we solve for. The probability densities increase when going across the ellipses and moving towards the center. The point labeled New is the most likely point of the set of points that all have the same valuation. The maximum likelihood methodology selects this point. The new margin is 0.4 standard deviations below the mean and the new growth is 0.16 standard deviations below the mean.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-1.png" width="672" />

# Concluding Remarks

The primary intent of the valuation space is to provide an investor a translation of an observed stock price into a representation of what is expected by the market of the firm in terms of a trajectory of free cash flows to the firm. We allow the investor to do their own analyses by customizing the trajectories. This approach provides the user with an alternative set of trajectories that are more reasonable for 34 cases than the original methodology. This approach represents an enhancement of the *Valuation Space*.

[^1]: In their 10K for fiscal year ending Dec 31 2021, Exelon reported “Total Operating Revenues” of \$36,347mm and “Operating Income” of \$2,723mm for that fiscal year. Their operating revenue consisted of largely “Competitive business revenues” and “Rate-regulated utility revenues”. In their 10K for FY 2022, they report operating revenue for of \$16,245 and an operating income of \$2,682 for the prior fiscal year (FYE Dec 31, 2021). In the new 10K, “Operating Revenue” consists of mostly “Electric Operating Revenues,” and “Natural Gas Operating Revenues.” The revenue for the same period was dramatically reduced in the next year statement, but the operating income was about the same.
