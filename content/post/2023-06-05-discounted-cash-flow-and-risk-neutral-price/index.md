---
title: Discounted Cash Flow and Risk Neutral Pricing
author: DWD
date: '2023-06-05'
slug: discounted-cash-flow-and-risk-neutral-price
categories:
  - Musings
tags:
  - WACC
---

![](images/pagebreak6.png)

# Abstract
People that value firms are often more comfortable work within the conceptual framework of the corporate finance literature and people that price options work within the conceptual framework of option pricing theory.  The two use many of the same constructs, but think about them differently.  This posts explains the key differences and why the differences are important.  The main implications are that you should either use a WACC and physical probabilities or the risk free rate and risk neutral probability to value across multiple scenarios. Further, when computing the WACC one should be using the market value of debt and equity, not their book values.

![](images/pagebreak6.png)

In the context of valuing a security, an option or a structured product, people use the constructs of option pricing theory to value risky cash flows that arrive at different periods of time, and a key component of option pricing theory is computing the present discounted value of a stream of cash flows.  In the context of valuing a company people make projections of cash flows and compute their present discounted value as well.  In practice, the approaches share many of the same core components, but do differ in important ways.

One of the great insights of continuous time financing is that you can value a stream of contingent cash flows by computing the presented discounted value of the cash flows in each state of the world using the risk free rate and then compute the weighted sum using a risk neutral probabilities (probabilities that over weight the bad state of the world.).  To the extent that there are tax payments associated with the cash flows, one simply subtracts them before valuing the option. This allows one to abstract away from the construct of a risk premium when discounting, but at the same time one needs risk adjusted probabilities.

In discounted cash flows analysis used to value a company, one will project a _plausible stream_ of cash flows for a company and then discounts them back at the weighted average cost of capital for the company.  One will also consider a good and bad scenario and compute the value of the company as the probability weight average of value of each scenario.  Each scenario is valued using the weighted average cost of capital.  While there are many approaches, the basic idea of the weight average cost of capital is to average the "required return of investors" in equity and debt by the proportions of debt and equity outstanding.

The two approaches should get you to the same place which I can illustrate with a simple example.

Suppose we have a good state and a bad state of the world, and there are two securities. One pays \$1 in both, and the other pay `\(R_G\)` and `\(R_B\)` in the good and bad state respectively with `\((R_G > 1 > R_B)\)`.  Both trade at \$1 and can be bought and sold without constraints. With enough resources, one can achieve whatever payouts one wants in both states of the world by the appropriate mix of the risky and risk free assets.  One can construct a portfolio of that by solving for `\(shares_{riskfree}\)` and `\(shares_{risky}\)` in the system of two equations and two unknowns below:


$$ PayOutGood =  shares_{riskfree} + shares_{risky}R_G$$

$$ PayOutBad =  shares_{riskfree} + shares_{risky}R_B$$
For example, if one wanted a portfolio that paid out $1 in the bad state of the world and 0 good state of the world one would solve for:

$$ 0 =  shares_{riskfree} + shares_{risky}R_G$$

$$ 1 =  shares_{riskfree} + shares_{risky}R_B$$
and obtain `\(Shares_risky = \frac{1}{R_B-R_G}\)` and `\(Shares_{riskfree} = \frac{-R_G}{R_B- R_G}\)`. 
The insight of risk neutral pricing is that one can solve for a risk neutral probability such that the expected payoffs of the risk security is equal to the expected payoff of the risk free security:

`$$(1-q)R_G + qR_B = 1$$`
where `\((1-q)\)` is the risk neutral probability of the good state of the world and `\(q\)` is the probability of the bad state of the world.

`$$q=\frac{R_G-1}{R_G-R_B}$$`

These are risk neutral probabilities, which are in a sense a translation of a prices (prices that come from a no arbitrage equilibrium) that makes the prices more intuitive.  They are not directly connected to the physical probabilities.  Nevertheless, we would typically expect the risk adjusted probability of the bad state of the world, `\(q\)`, to exceed the physical probability, `\(p\)`, of the bad state of the world to reflect risk aversion -- the bad events get over weighted in equilibrium when using the construct of risk neutral pricing.

As the risk free asset costs \$1 and pays out \$1 in both future states of the world, the yield on the risk free asset is 0 (or the risk free rate is 0). We can compute the expected yield associated with holding the risky asset and call it the market risk premium:

$$ MRP = \frac{pR_B + (1-p) R_G - 1}{1} = p(R_B-1) + (1-p) (R_G - 1) $$  

As it is computed under the physical measure, it is the risk premium associated with holding this asset.  It is greater than zero as p<q. One can use this yield to value this risky asset.  Suppose one held a portfolio that was a mixture of the risk free asset (with a weight of `\(\lambda\)`) and the risk free asset (say a weight of `\(1-\lambda\)`). The cost of the portfolio would be 1, and the expected physical return on the asset would be:

$$ WACC = \lambda0 + (1-\lambda)MRP$$

which is consistent with the basic idea of the weighted average cost of capital, so we will call it WACC.  A few things to note though.  We need the prices of the two securities today, their payouts in both states of the world and the physical probabilities of default to calculate the expected return.  We need to know the prices today for the denominator and the payoffs and their probabilities to compute the numerator.  

In context of valuing a company, one may consider a good case and a bad case scenario compute the DCF of each using the WACC, and then compute the probability weighted average of both. 

For example, the value in the Good state of the world is:

$$ \frac{1 + (1-\lambda)(R_g-1) }{1+WACC}  $$

and the value in the bad state of the world is:

$$ \frac{1 + (1-\lambda)(R_B-1) }{1+WACC}  $$

Using the physical probability, `\(p\)`, to value the the portfolio we get:


$$ \frac{1 + (1-\lambda)\bigg((1-p)(R_G-1) + p(R_B-1)\bigg) }{1+WACC}  $$
or 

$$ \frac{1 + (1-\lambda)\bigg(MRP\bigg) }{1+WACC}  $$

which is one.  The fact that you get the same price, implies that someone using this approach to value this portfolio would give it a value consistent with a no arbitrage equilibrium.  What this minimal example reveals is that if you are discounting with the WACC for different scenarios and computing a weighted average of values across the scenarios, one should use the physical probabilities to do the weighting and not the risk neutral probabilities. If one does one will get the same result as one would get using the risk free rate and risk neutral probabilities.  Another important implication of this example is that when computing WACC one should weight by the market value of the securities and not their book value. My understanding it that these results do extend to more complex cases such as the equilibrium under which the Black Scholes option pricing formula is derived.


