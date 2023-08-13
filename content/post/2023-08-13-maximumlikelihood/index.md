---
title: 'Methodological Advance '
author: Douglas Dwyer
date: '2023-08-13'
slug: maximumLikelihood
categories:
  - Methodology
tags:
  - Theory
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

In the Q3 2023 valuation space release, we introduce a new enhancement. The *Valuation Space* framework is a variation on *Expectations Investing*. The concept of Expectations Investing has been explained to me as follows. First, you solve for a trajectory of the firm’s future that is consistent with the current valuation. The next step is to assess the trajectory. If one of the paths is implausible you adjust it and see if you can adjust another path to compensate -– solve for new trajectory that is consistent with the current valuation. If you can not, you do not buy the stock at the current price.

In *Valuation Space* framework, the two most important parameters are the estimated initial growth , `\(G_{1,5}\)`, and the implied sustainable margin, `\(OM_{5,\infty}\)`. The estimated initial growth is the growth rate is used to compute the trajectory of revenue growth for the first five years after which it converges to 2% by year ten. The implied sustainable operating margin is used in the projection of operating margins. It used as the margin that the firm achieves by year five and sustains in perpetuity. The original methodology estimates the initial growth using the average of growth for the company over the past five years and then solves for the implied sustainable margin such that the present discounted value of free cash flow to the firm is equal to the enterprise value of the firm.

These initial trajectories are useful starting points for *Expectations Investing*. One can examine them to determine if one is comfortable with the implications for growth of free cash flows to the firm that the market is expecting. One can also customize them to the incorporate one’s own views on the future prospects of the company at hand. Nevertheless, the initial trajectories are some times unrealistic. In such cases we seek to enhance the methodology to project the user with more realistic trajectories that are still consistent with the market’s current valuation.

## Issues with Original Approach in Certain Cases

In some cases, the original approach will produce trajectories that are problematic. Some examples include:

#### Example 1

If the market has great expectations for the earnings growth of a firm even though the recent growth rate of the firm is moderate, then the implied sustainable margin may be implausibly large, while initial growth is more moderate.

#### Example 2

Second, if the company has been through a recent business downturn that the market expects it to recover from (eg a Casino or a Cruise Ship during COVID lockdown) it may estimate a negative growth rate which may imply an unrealistically large implied sustainable operating margin.

#### Example 3

If a company divests a large portion of its business, it may look like it has declining revenue even though the market expects it to be stable. In these cases, the baseline framework may estimate negative revenue growth and solve for an unrealistically large implied sustainable operating margin.

#### Example 4

If a company just acquired a large business, it may look like it has rapid revenue growth even though the market expects it to be stable. In these cases, the baseline framework may estimate rapid revenue growth and solve for a unrealistically low implied sustainable operating margin.

#### Example 5

A so-called embryonic company may initially burn cash to develop the capability to do something new. For example, a company building the capability to send satellites into orbit. The historical revenue and margin of such a company may convey only very limited information on the company’s potential to deliver free cash flow to its stakeholders.

# The New Methodolgy

The new methodology complements the existing methodology by mitigating the first five enumerated issues. The idea is that instead of solving for one implied sustainable margin using one estimated margin, we solve for a 100 implied sustainable margins using a 100 possible initial growth rates that evenly spaced over interval of (-.2,1). Consequently, we effectively cover all the possible growth rates between -20% and 100%. Once we have a 100 pairs of initial growth rates and implied sustainable margins, we can choose the most reasonable pair. For example, if an implied sustainable margin of 94% paired with an initial growth rate of 5% produces the same valuation as an implied sustainable margin of 35% and an initial growth rate of 20% clearly the later is more reasonable than the former as one can not find an example of a firm that has sustained a 94% margin for multiple years.

One way to formalize this intuitive approach is to fit a parametric bivariate distribution to our sample of firms where the two variables we fit are the estimated initial growth rate and the estimated initial margin. The estimated initial margin is the median margin over the past five years. With a parametric bivariate distribution we can assign probabilities to each of the pairs of initial growth rates and implied sustainable margins, and choose the most likely pair. We can term this approach the *maximum likelihood approach*. The approach will favor moderation of both growth and margin over cases where one is extreme and the other is moderate. Nevertheless, this approach will disregard whether or not the firm had recent historical growth.

In the dashboard, we now allow the user to choose methodology 1,2 or 3. Method 2 is the original approach, Method 3 is the *maximum likelihood approach*. Method 1 is the original methodology unless we the *maximum likelihood approach* as more reasonable in which case it is the *maximum likelihood approach*. Our process for deciding which approach is perferred is to review the cases where original method produces very large implied sustainable margins or very low initial growth rates and determine which methodology is most appropriate for these cases. As part of the outlier review, we verify the market cap, the revenue and the operating income that we are using for the firm at hand against other sources. Table 1 presents the firms for which Method 2 was overwritten with Method 3.

<div class="datatables html-widget html-fill-item-overflow-hidden html-fill-item" id="htmlwidget-1" style="width:100%;height:auto;"></div>
<script type="application/json" data-for="htmlwidget-1">{"x":{"filter":"none","vertical":false,"data":[["LVS","WYNN","RCL","GEN","HWM","VRSN","VRSK","LLY","NVDA","ROP","MCD","FICO","CCL","MCO","MTCH","CDNS","CSGP","ISRG","DD","TDG","AWK","ANSS","SNPS","ATVI","FTV","BIIB","IBM","BBWI","BA","MAR","GE","NCLH","CZR","APRN"],["Las Vegas Sands","Wynn Resorts","Royal Caribbean Group","Gen Digital","Howmet Aerospace","Verisign","Verisk","Eli Lilly and Company","Nvidia","Roper Technologies","McDonald's","Fair Isaac","Carnival","Moody's Corporation","Match Group","Cadence Design Systems","CoStar Group","Intuitive Surgical","DuPont","TransDigm Group","American Water Works","Ansys","Synopsys","Activision Blizzard","Fortive","Biogen","IBM","Bath &amp; Body Works, Inc.","Boeing","Marriott International","General Electric","Norwegian Cruise Line Holdings","Caesars Entertainment","Blue Apron Holdings, Inc."],["276%","139%","115%","112%","112%","105%","101%","99.9%","94.2%","88.1%","83.6%","82.5%","80.2%","79%","77.7%","76.4%","76.3%","75.5%","74.7%","74.2%","66.7%","63%","61.7%","61%","54%","52.8%","43.4%","40.9%","38.3%","30.3%","24.8%","22.8%","20.4%","18.1%"],["-20%","-16.4%","-20%","-12.5%","-20%","3.73%","4.37%","5.1%","23.7%","2.55%","2.02%","7.27%","-20%","6.83%","-9.91%","9.71%","15.9%","13.1%","-20%","5.54%","3.14%","12.9%","12%","3.33%","-5.7%","-6.54%","-9.65%","-18%","-11%","-6.74%","-20%","-20%","-20%","-9.93%"],["46.3%","35.4%","42.1%","36.8%","21%","29.5%","36.1%","31.5%","38.4%","44.3%","32.6%","29%","37.6%","33.7%","24.1%","29.9%","45.7%","34.6%","27.8%","39.2%","59.2%","37.8%","33.2%","33.3%","28.3%","23.9%","23%","11.1%","21.5%","16.8%","25.3%","30.1%","26.7%","8.94%"],["27%","20.4%","17.4%","20.4%","12.6%","28.2%","30.7%","29.4%","43.9%","28.8%","25.2%","27.6%","13.8%","28.2%","15.6%","28.8%","36.1%","32.5%","12%","27.6%","21%","30.1%","28.2%","22.8%","15.6%","14.4%","12%","6.53%","10.8%","8.94%","5.93%","0.503%","1.71%","5.93%"],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0]],"container":"<table class=\"row-border\">\n  <thead>\n    <tr>\n      <th>Ticker<\/th>\n      <th>Name<\/th>\n      <th>OM5<\/th>\n      <th>G<\/th>\n      <th>OM5_ML<\/th>\n      <th>G_ML<\/th>\n      <th>In_SNP500<\/th>\n    <\/tr>\n  <\/thead>\n<\/table>","options":{"pageLength":30,"dom":"tip","bFilter":0,"bSort":0,"bProcessing":0,"bPaginate":0,"bInfo":0,"columnDefs":[{"className":"dt-right","targets":6}],"order":[],"autoWidth":false,"orderClasses":false,"lengthMenu":[10,25,30,50,100],"rowCallback":"function(row, data, displayNum, displayIndex, dataIndex) {\nvar value=data[0]; $(this.api().cell(row, 0).node()).css({'background-color':'white'});\nvar value=data[1]; $(this.api().cell(row, 1).node()).css({'background-color':'white'});\nvar value=data[2]; $(this.api().cell(row, 2).node()).css({'background-color':'white'});\nvar value=data[3]; $(this.api().cell(row, 3).node()).css({'background-color':'white'});\nvar value=data[4]; $(this.api().cell(row, 4).node()).css({'background-color':'white'});\nvar value=data[5]; $(this.api().cell(row, 5).node()).css({'background-color':'white'});\nvar value=data[6]; $(this.api().cell(row, 6).node()).css({'background-color':'white'});\n}"}},"evals":["options.rowCallback"],"jsHooks":[]}</script>

The table above present the 35 names for which we choose to use the *maximum likelihood method* over the *original method*. They have been sorted by the implied sustainable margin calculate using the first method. The columns is labeled OM5 and G are implied sustainable margin and the initial growth as computed under the original approach and the columns labeled OM5_ML and G_ML are the sustainable operating margins and the initial growth caculated using the *maximum likelihood method*. The final column indicates whether or not the firm is currently in the S&P 500.

The companies LVS, RCL, CCL, WYNN, NCLH, CZR, MAR are all in the “consumer discretionary” segment and saw their revenue drop precipitously during the pandemic. The maximum likelihood approach mitigates this issue by increasing G and lowering OM5 to more moderate levels. The G_ML are all positive. BBWI, GE and GEN have all sold substantial business segments over the past five years which accounts for the negative estimated growth and high operating margins than the original methods computed. APRN are embryonic company that is not in the S&P500. Its current stock price can be rationalized with moderate revenue growth (5.93%) and a moderate sustainable margin (8.94%) which is more reasonable than negative revenue growth (9.93%) and a strong sustainable margin (18.1%).

# How the Approach Works

The figure below shows how the approach works for Body and Bath Works (BBWI). In the summer of 2021, L Brands Inc. spun off Victoria’s Secrets and became BBWI and in the process reduced its size by approximately one-half. Therefore, historical the growth rate BBWI is not indicative of the future growth rate of BBWI. The original methodology estimated a growth rate of -18% based for BBWI and an implied sustainable margin of 41%. When transformed into standard deviations, the growth rate is -2.4 standard deviations below the mean and the operating margin is 2.4 standard deviations above the mean, which is the labeled point in the lower right hand graph below. The solid red curve through this point and the other one are all the combinations of initial growth and sustainable margin that are consistent with the valuation of the of BBWI. The ellipses represent points with equal probability densities under the parametric distribution that we solve for. The probability densities increases when going across the ellispes and moving towards towards the center. The point labeled New is the most likely point of the set of points that all have the same valuation. The maximum likeliihood methodolgy selects this point. The new margin is 0.4 standard deviations below the mean and the new growth is 0.16 standard deviations below the mean.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-1.png" width="672" />

# Concluding Remarks

The primary intent of the valuation space is to provide an investor a translation of an observed stock price into a representation of what is expected by the market of the firm in terms of a trajectory of free cash flows to the firms. We allow the investor to do their own analyses by customizing the trajectories. This approach provides the user with an alternative set of tarjectories that are more reasonable for 34 case than original methodolgy. This approach represents a model enhancement for the valuation space.
