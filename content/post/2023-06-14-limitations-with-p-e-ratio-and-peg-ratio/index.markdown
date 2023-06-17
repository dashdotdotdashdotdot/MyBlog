---
title: Intrepreting the P/E Ratio and PEG Ratio
author: DWD
date: '2023-06-14'
slug: limitations-with-p-e-ratio-and-peg-ratio
categories:
  - Musings
tags:
  - Theory
---

If one's cost of capital is 7% and return on investment is 5%, then one should forego investment. This seemingly innocuous statement has implications for intrepreting both the P/E ratio and the PEG ratio, which are common metrics used in the valuation of firms.

A straightforward way to illustrate the limitations is to assume a firm with positive earnings doesn't pay a dividend until time period T and then at time period T sets the dividend equal to earnings and stops growing. We will assume that a firm reinvests earnings is to grew its balance sheet, which is necessary to grow earnings. We will assume that the ratio of earnings to book assets stays constant as the firm grows.

As an equation we have:

$$ E = \pi K $$ All earnings being reinvested implies

$$ A_{t+1}-A_t = E_t;  \; for \; t <T$$ (for `\(t \leq T\)`), which implies that

$$ \hat{A} = \pi $$

(for `\(t\leq T\)`). In this context, the growth of both the firms assets and earnings are directly linked to the return on investment, which we assume to be constant over the growth period.

It implies

`$$A_t = A_0(1+\pi)^t$$`

and earnings will equal

`$$E_t = A_0(1+\pi)^t$$`

which is an annuity after time period `\(T\)`. If we assume a constant discount factor of `\(r\)` the value of the firm is given by:

$$ V_T = \frac{E_T}{r} $$

and

$$ V_0 =  \frac{E_T}{r(1+r)^T} $$ or

$$ V_0 =  \frac{\pi A_0(1+\pi)^T}{r(1+r)^T} $$

If we divide both sides by earnings we get:

$$ \frac{V_0}{E_0} =  \frac{1}{r}\bigg(\frac{1+\pi}{1+r}\bigg)^T $$

which is the *P/E Ratio*. Note that if \$\pi \> r \$ then the P/E is increasing in `\(T\)` and if the firm could choose to grow forever that they would, vand conversely if `\(\pi < r\)` the firm maximizes falling by setting `\(T\)` to 0 and not growing. In other words, in order for growth to be value enhancing ones return on investment needs to exceed its cost of capital. It also demonstrates if two firms have the same growth rates the one that can sustain the growth rate for a longer period of time will be worth more (if \$\pi \> r).

For different Ts, we can create a table that maps the P/E ratio to the `\(\pi\)`.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-1-1.png" width="672" />

# The PEG ratio

The so called PEG ratio is computed as the P/E ratio divided by the expected growth measured in percent per year, so that a P/E ratio of 10 and an expected annual growth rate of 10% translates to a PEG of 1. If the PEG is less than 1 is viewed as under valued.

In this setting the so called *PEG* is represented as:

$$ PEG = \frac{V_0}{E_0}\frac{1}{100\pi}=  \frac{1}{100r\pi}\bigg(\frac{1+\pi}{1+r}\bigg)^T $$ Apparently, when `\(r = pi\)` and `\(r\pi\)` = 0.01\$ this ratio will equal 1 for all `\(T\)`, which is the case for a cost of capital of 10% and a growth rate of 10%, which is observed in the graph below.

If we differentiate the PEG ratio with respect to growth we get:

$$ \frac{\partial PEG}{\partial\pi}=  T\big(PEG\big)\bigg(\frac{1+r}{1+\pi}\bigg) -\frac{1}{100r\pi^2}\bigg(\frac{1+\pi}{1+r}\bigg)^T $$ which turns out to be 0 for a `\(T=10\)`, and `\(r\)` of 10% and a `\(\pi\)` of 10%, which we see below in that the tangent to the T=10 curve has at the point (1,0.1) has no slope, which suggest that the axiom: "The P/E ratio of any company that's fairly priced will equal its growth rate" is approximately true when both growth and the cost of capital are near 10% and growth is assumed to last 10 years. For a company with a growth rate of 33%, however, it's "fair PEG' is actually 2.

<img src="{{< blogdown/postref >}}index_files/figure-html/unnamed-chunk-2-1.png" width="672" />

# A Decomposition of the P/E ratio

We can write the P/E ratio as 

$$ \frac{V_0}{E_0} =  I \times G $$
where 

$$ I = \frac{1}{r} $$ 

and 

$$G = \bigg(\frac{1+\pi}{1+r} \bigg)^T $$. 

That is an Income component and a Growth.  So if one firm has a cost of capital of 10% and a P/E ratio of 12, then the growth expectations for the of the firm are increasing the value of the firm by 20%.   The limitation of this decomposition, however, is it is not clear how to apply it to a firm with negative earnings.





