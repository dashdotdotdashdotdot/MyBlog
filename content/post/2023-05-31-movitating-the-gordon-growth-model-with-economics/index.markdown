---
title: Motivating the Gordon Growth Model with Economics
author: DWD
date: '2023-05-31'
slug: movitating-the-gordon-growth-model-with-economics
categories:
  - Musings
tags:
  - WACC
---

# Gordon Growth Model

The standard form of the gordon growth model is:  


$$ P_0 = \frac{D_0}{r-g} $$

where r is the risk free rate or the weighted average cost of capital (WACC).  D is the current dividend and g is the growth rate.

# Where is the dividend coming from?

Suppose a firm uses capital to generate profit.  There are no taxes, the firm has no debt and capital lasts forever.  The firm's profit will scale with capital:


$$ profit = \pi K $$

Its a well know result in growth theory that if the price of output, the price of the quick adjustment variable (the quick adjustment variable is typicaly thought of as labor whose price is wage per unit time) and producitivity and we use a constant returns to scale production function that profit per unit slow adjustment variable (i.e., capital) is independent of firm size.  In terms of accounting, this profit could be thought of as "operating income" which would be more or less "net income" if there is no debt and there are no taxes.  In terms of accounting or corporate finance, `\(\pi\)` would be could be called return on capital.

Suppose a firm reinvests a constant percentage of profit, `\(\phi\)`, and we choose to measure units of capital of capital such that `\(K = A\)` where `\(A\)` is the total assets of the firm (A firm with 10 trucks each worth \$10,000 has 100,000 units of trucks where a unit of trucks is 1/10,000 of a truck and the book assets of \$100,000).  The assets in the next period will be the assets in this period plus the amount of reinvest: 


$$ A_{t+1} = A_t + \phi \pi A_t$$
or  

$$ A_{t+1} =(1+\phi \pi) A_t$$
as profit is linear in A, both profit and book assets are growing at the rate `\(\phi \pi\)`

What is not reinvested is a dividend `\(D_t = (1-\phi)\pi A_t\)`.  So dividends are also growth at the rate `\(\phi \pi\)`.  So we would have that the value of the firm is the present discounted value of the dividends which is 

$$ V= \frac{ (1-\phi) \pi A}{r-\phi \pi}$$ 




If we replace `\(\phi \pi\)` with `\(g\)` the formula becomes:


$$ V= \frac{(\pi -g) A}{r-g}$$ 
This is a useful expression.  Under the growth model, more growth in dividends is always good as it makes the denominator smaller. In this expression, growth is paid for out of earnings and subtracted from the top.  More growth makes both the numerator and the denominator smaller.

The condition for whether or not more growth increases firm value is found by differentiating the fraction with respect to g:

$$ \frac{dV}{dG}= \frac{-A(r-g)+(\pi-g)A }{(r-g)^2}=\frac{A(\pi-r)}{(r-g)^2}$$
which states that if operating margin exceeds the cost of capital more incremental growth increases firm value.  Also, if we interpret `\(\pi\)` as `\((1-t)m\frac{S}{A}\)` where `\(t\)` is the tax rate and `\(m\)` is the operating margin and \frac{S}{A} is asset turnover (or asset productivity), then the condition becomes that in order for incremental growth to increase firm value `\((1-t)m\frac{S}{A}\)` must exceed the cost of capital.  This construct `\((1-t)m\frac{S}{A}\)` is referred to as return on investment in the corporate finance literature -- in order for growth to be good for firm value the return on investment must exceed the cost of capital.


# Comparative Dynamcis

For an r of 0.075 the value of the firm is increasing much more rapidly in the rate of reinvestment ($\pi$) when the operating margin is 20\% versus 10\%. The value of the firm becomes infinite when 

`$$\phi = {r}/{\pi}$$`

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="672" />







