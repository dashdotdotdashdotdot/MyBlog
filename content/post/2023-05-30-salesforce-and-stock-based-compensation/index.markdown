---
title: SBC and Salesforce
author: DWD
date: '2023-05-30'
categories:
  - CaseStudies
tags:
  - GreatExpectations
slug: salesforce-and-stock-based-compensation
---

I have recently starting look closely at equity research available to me as a retail investor. I am in the process of building out a framework to value a company. I am looking at cases where my approach yields result that differ from the implications of equity research.  The companies with _expensive valuations_ are often _Tech_ companies, that make extensive use of stock based compensation (SBC). The use of SBC by companies with expensive valuations is not surprising as SBC is a useful form of financing for a growth company.  Since 2006, companies treat SBC as an expense when computing earnings.

Salesforce (CRM) is one company that I find puzzling. They currently have a trailing P/E ratio of about 1,000 and a "forward-looking P/E ratio" of about 30 (according to Yahoo Finance). The large P/E ratio is based on the GAAP Earnings for FY 2023, and the smaller P/E ratio is based on management guidance for Earnings computed using *non-Generally Accepted Accounting Principles* (non-GAAP) for FY 2024. As a reference point, Yahoo finance is currently reporting a P/E ratio for Apple of about 28 (both forward and trailing), which is based on GAAP earnings. What does it mean that the non-GAAP number is a lot lower?

CRM earnings per share for Fiscal Year Ended January 31, 2023 was \$0.21 (GAAP Basic Net Income per Share) and they have recently been trading at around \$200 per share. For Fiscal Year 2024, the guidance on earnings is \$2.6 per share. In early 2023, CRM announced a 10% reduction in force, which explains why management expects a large improvement in profitability. They also provide guidance for non-GAAP earnings per share of \$7.13. The reason for the large difference is the non-GAAP numbers of CRM ignore GAAP expenses related to Stock Based Compensation (SBC), Amortization of Intangibles and Restructuring Charges. At a stock price of 200 the forward looking P/E ratio based on GAAP Numbers would be 76.9 versus 28 under non-GAAP. The SBC alone is \$2.88 per share, which at a stock price of 200 would increase the Non-GAAP P/E ratio from 28 to 47. (These numbers can be found in CRM's press release that announced the Full Fiscal Year 2023 results).

People use a P/E ratio as a guide for whether a stock is trading cheap or expensive. In this note, I will illustrate that it is important to account for SBC when computing a P/E ratio. One should also consider the issue when looking at other valuation metrics such as Price to Free Cash Flow and Enterprise Value to EBITDA.

[The Note](/docs/SalesForce_V3.pdf)



