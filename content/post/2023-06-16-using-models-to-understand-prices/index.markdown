---
title: Using Models to Understand Prices
author: DWD
date: '2023-06-16'
categories:
  - Methodology
tags:
  - Theory
slug: using-models-to-understand-prices
---

In Valuation Space, we solve for an "implied sustainable margin" to understand how the market is valuing a company, which is using a model to understand a price. There are many examples of using a model to understand a price in finance. Mathematically, they all involve solving a multivariate equation for one variable when the other variables are either known or reasonable estimates are at hand.

In this post, I illustrate the idea by way of analogy using a handful of examples.

# Yield to Maturity

The yield to maturity is the internal rate of return of buying a bond and holding it to maturity. One computes it by solving for the yield that will set the present discounted value of the cash flow equal to the current price. This concept facilitates comparing the prices (or the returns) of different bonds with different streams of payments.

# Z spread

Z spread is similar to Yield to maturity. It involves solving for a parallel shift to a reference curve such that the price of a bond is equal to the present discounted value of the bond's cash flows. It is used to understand how credit risk is impacting the price of the bond. When computing the Z-spread, of course the choice of the reference curve and how its constructed will matter. One application for the concept of a Z-spread would be to compare bond prices and CDS spreads for bonds that are issued by the same firm as the CDS contracts are written against.

# Gordon Growth Model

Given the price of a stock, its dividend, and the cost of equity, one can solve for the expectations of dividend growth using the Gordon Growth Model. One application is decomposing the total return on a stock into its "income" and capital gains. One needs to estimate the cost of equity.

# Option Implied Volatility

The Volatility Index or VIX is known as the "Fear Index," which spikes following an event that the market interprets as a signal of turbulence to come. I interpret it as: a one-month at-the-money option on the S&P 500 is currently being priced such that it is equal to the Black-Scholes value computed using the VIX as the measure of volatility.

In order to use the Black-Scholes formula to compute the value of an option you need to know the time to maturity, the price of the underlying stock, the strike price of the option, and the risk-free rate. Of these constructs, time to maturity and the strike price are contractually specified, the price of the stock is observed. One needs to choose an appropriate value for the risk-free rate. There are a variety of techniques for estimating equity volatility from the historical equity returns with differing degrees of sophistication that one could use to value the option. Alternatively, if one can observe the option price one can work the formula backwards to solve for the *Option Implied Volatility*. An application of this technique would be to value an option by using the price of similar options, solve for the option implied volatility of each and then interpolate the OIV of the option at hand based on relevant characteristics (e.g, the strike price and the time to maturity). One would then use this volatility to value the option.

# Valuation Space Approach to Implied Sustainable Margins

In using a discounted cash flows approach to valuing a company, the inputs to the value function are revenue projections, margin projections, asset turnover projections, the tax rate, net operating losses and the weighted average cost of capital. In order to ensure a finite value, one generally assumes that at some point in the future revenue growth will converge to a long-run rate of growth of the economy as a whole.

## Revenue Projections

We assume that that growth of a company over the next five years will equal average growth over the past five years and that growth will taper off to 2% between years 5 and 10. These are reasonable and round numbers that are consistent with common practices found in the corporate finance literature.

## Asset Turnover

For asset turnover (ratio of sales to assets) we can assume that median value over the past five years will persist into the future as well. This is effectively assuming that the asset turnover of new assets will be consistent with the historical asset turnover of the firm's existing assets. It is a reasonable starting assumption.

## Initial Operating Margin

Operating Margin, which we define as the ratio of operating income to sales, is often volatile in any given year as it can be influenced by unusual events. For this value we can assume that the initial margin of the firm is equal to the median margin of the firm over the past five years. We use the median rather than the mean as it is less sensitive to outliers.

## Net Operating Losses

A firm that has a history of losing money will not have to pay taxes until they make the money back. For this construct we simply assume that net operating losses are equal to the negative of the sum of operating income over the past five years if negative.

## Cost of Capital

We assume 400bps risk premium over the ten-year treasury.

## Implied Sustainable Margin

The remaining construct required to determine the value of the firm is where will the margin end up. We solve for this construct by setting the present discounted value of the free cash flows equal to its current enterprise value. We assume it gets there by year five and persists forever.

This approach enables a value attribution of the firm -- how would its value change if rather than having the estimated growth rate it had no growth? how would its value change if rather than converging to the implied sustainable margin it stayed at its current margin. Additionally, this allows one to characterize the valuations into value types and identify valuation outliers.

A set of projections is also useful a benchmark for planning purposes and monitoring. Sometimes this approach will solve for an unreasonable project. For example, it can solve for an implied sustainable margin that is implausibly large. The dashboard allows the user to lower the implied sustainable margin and adjust other levers to get a projection that is more reasonable as required.
