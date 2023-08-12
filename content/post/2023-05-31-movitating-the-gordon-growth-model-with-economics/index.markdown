---
title: Linking the Gordon Growth Model with Economic Theory
author: DWD
date: '2023-05-31'
categories:
  - Musings
tags:
  - PEratio
slug: movitating-the-gordon-growth-model-with-economics
---

This methodological post is intended to show how the Gordon Growth Model can be motivated/derived using a standard growth model from the economics literature using a number of explicit assumptions. It also shown that growth is only good for firm value when the return on investment exceeds the cost of capital. 

The post links the _payout ratio_ to the growth of the firm.  Growth is caused by reinvesting the earnings that are not paid out in the form of a dividend.  This explicit linkage differs from how the concept is taught in corporate finance.  In the corporate finance literature the payout ratio is not directly connected with the growth of the firm (See for example: https://pages.stern.nyu.edu/~adamodar/New_Home_Page/lectures/pe.html).



# Gordon Growth Model

The standard form of the Gordon Growth Model is:  


$$ P_0 = \frac{D_0}{r-g} $$

where `\(r\)` is the risk free rate or the weighted average cost of capital (WACC).  `\(D\)` is the current dividend and `\(g\)` is the growth rate.

# Where is the dividend coming from?

Suppose a firm uses capital to generate profit.  There are no taxes, the firm has no debt and capital lasts forever.  The firm's profit will scale with capital:


$$ profit = \pi K $$

A well know result from growth theory is that if the price of output, the price of the labor (or the quick adjustment variable) and productivity is fixed and we use a constant returns to scale production function that profit per unit capital (or the slow adjustment variable) is independent of firm size (cf., Dwyer, Douglas “Technology Locks, Creative Destruction, and Non-Convergence in Productivity Levels”. Review of Economic Dynamics, 1998).  In terms of accounting, this profit could be thought of as "operating income" which would be more or less "net income" if there is no debt and there are no taxes.  In terms of accounting or corporate finance, `\(\pi\)` could be called return on capital.

Suppose a firm reinvests a constant percentage of profit, `\(\phi\)`, and we choose to measure units of capital such that `\(K = A\)` where `\(A\)` is the total assets of the firm (A firm with 10 trucks each worth \$10,000 has 100,000 units of trucks where a unit of trucks is 1/10,000 of a truck and the book value of assets is \$100,000).  The assets in the next period will be the assets in this period plus the amount of reinvestment: 


$$ A_{t+1} = A_t + \phi \pi A_t$$
or  

$$ A_{t+1} =(1+\phi \pi) A_t$$
as profit is linear in A, both profit and book assets are growing at the rate `\(\phi \pi\)`.

What is not reinvested is a dividend `\(D_t = (1-\phi)\pi A_t\)`.  So dividends are also growing at the rate `\(\phi \pi\)`.  So we would have the value of the firm is the present discounted value of the dividends which is 

$$ V= \frac{ (1-\phi) \pi A}{r-\phi \pi}$$ 




If we replace `\(\phi \pi\)` with `\(g\)` the formula becomes:


$$ V= \frac{(\pi -g) A}{r-g}$$ 
This is a useful expression.  Under the growth model, more growth in dividends is always good as it makes the denominator smaller. In this expression, growth is paid for out of earnings and subtracted from the top.  More growth makes both the numerator and the denominator smaller.

The condition for whether or not more growth increases firm value is found by differentiating the fraction with respect to g:

$$ \frac{dV}{dg}= \frac{-A(r-g)+(\pi-g)A }{(r-g)^2}=\frac{A(\pi-r)}{(r-g)^2}$$
which states that if the operating margin exceeds the cost of capital more incremental growth increases firm value.  Also, if we interpret `\(\pi\)` as `\((1-t)m\frac{S}{A}\)` where `\(t\)` is the tax rate and `\(m\)` is the operating margin and `\(\frac{S}{A}\)` is asset turnover (or asset productivity), then the condition becomes that in order for incremental growth to increase firm value `\((1-t)m\frac{S}{A}\)` must exceed the cost of capital.  This construct `\((1-t)m\frac{S}{A}\)` is referred to as the return on investment in the corporate finance literature -- in order for growth to be good for firm value the return on investment must exceed the cost of capital.


A common construct that is used to assess the richness of the valuation of a stock is the P/E ratio. In this context, we obtain an expression for the P/E ratio by dividing our firm value equation by `\(\pi A\)`:

$$ \frac{V}{\pi A} = \frac{1}{r-g}-\frac{g}{\pi (r-g)}$$ 
So two firms with the same cost of capital and the same growth rate can have different P/E ratios.  A larger return on capital will make the second term smaller and thereby increase the P/E ratio; growth is less expensive for the firm with a high return on capital.











