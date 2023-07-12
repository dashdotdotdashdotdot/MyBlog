---
title: The Crux of the Damodaran Valuation Framework
author: DWD
date: '2023-07-12'
categories:
  - Musings
tags:
  - Theory
slug: the-crux-of-the-damodaran-valuation-framework
---


Here we lay out the key equations derived from Damodaran's spreadsheet and provide some commentary on how his calculation of Free Cash Flow to the Firm (FCFF) differs from how Free Cash Flow is often calculated (cash provided by operations minus capital expenditures) and why his calculation of (FCFF) is correct for purposes of computing Enterprise Value (which he calls _Value as a Going Concern_). 

# Inputs to the framework

The inputs to the "Crux of the framework" are vectors of growth rates, `\(g_t\)`, operating margins, `\(om_t\)`, weighted average cost of capital `\(WACC_t\)`, the tax rate `\(taxRate_t\)`, and asset turnover, `\(RevToCap_t\)` and an initial value for revenue `\(Rev_0\)` and Net Operating Losses `\(NOL_0\)`. To compute the book assets of the firm at any point in time, one also need an initial value for book assets, `\(Cap_0\)`.  The _crux_ is the calculation of the present discounted value of cash flows to compute the _value of operations as a going concern_, which I will refer to as _Enterprise Value_.  Damodaran's spreadsheet does a number of other useful calculations for which additional inputs are required that I will not elaborate on.  As his spreadsheet goes out 10 years, what I refer to as `\(T\)` is typically 10 and a time interval is a full year, but it need not be.


# First, compute Revenue and EBIT 

The first two steps are to compute the vectors for projected Revenue, and EBIT (Earnings before Interest and Taxes). These calculations are made as:</p>

$$ Rev_t = Rev_0 \prod_{\tau=1}^t(1+g_\tau)$$
and

$$ EBIT_t = om_t Rev_t $$


Note: Damodaran uses the term `\(EBIT\)`, whereas I prefer `\(Operating \; Profit\)`.  The two are typically very similar and the differences between them are related to other non-operating expenses and revenue that may not be recurring.



# Second, compute EBIT after Tax and Net Operating Losses.</h3>

$$ EBIT \quad after \quad Tax_t = EBIT_t - max(taxRate_t(EBIT_t - NOL_t),0) $$

$$ NOL_t = max(NOL_{t-1} - EBIT_t,0) $$

Net Operating Losses captures the concept that if a firm has a history of losing money, it does not have to pay taxes until Net Operating Losses becomes 0. Nevertheless, until it becomes zero you must decrease (or increase) NOL as you make (or lose) money. Hence the recursive nature of the calculation of both Net Operating Losses and `\(EBIT \; after\; Tax\)`

# Third, compute Reinvestment
The next step is to compute Reinvestment. A key input to compute reinvestment is Asset Turnover, which we will write as `\(RevToCap_t\)`. Asset Turnover is the amount of additional assets the firm needs to acquire to generate one incremental unit of revenue in period t.

$$ reinvestment_t = \frac{Rev_{t+1} - Rev_{t}}{RevToCap_t} $$
what this equation implies is that in order to achieve an increase in revenue of `\(Rev_{t+1} - Rev_t\)` one needs to invest this amount divided by Asset Turnover. 

The assets of the firm in any given period are given by:


$$ Cap_t = Cap_0 +\sum_{\tau=1}^{t} reinvestment_t $$

where `\(Cap_0\)` is the initial _book assets_ of the firm.

# Fourth, compute Free Cash Flow to the Firm


Damodaran computes “Free Cash Flow to the Firm (FCFF)” as 


$$ FCFF = EBITaftertax - reinvestment, $$


which deserves some explanation that I provide below.


# Fifth, compute the Discount Factor and the Present Discounted Value of Cash Flows



Next the cumulative discount factor is computed as:

$$ DF_t =  \prod_{\tau=1}^t \frac{1}{1+WACC_\tau}$$
and the present discounted value of cash flows:

$$  PV \quad of \quad FCFF = \sum_{t=1}^T DF_\tau
FCFF_\tau + DF_T \bigg( \frac{FFCF_T}{r_T-g_T} \bigg)\ $$

The last term is the terminal value:

$$DF_T \bigg( \frac{FFCF_T}{r_T-g_T} \bigg)\ $$

which is computed using a Gordon growth model and then discounted. 


# Explanation of Free Cash Flow to the Firm calculation.


Free cash flow to the Firm (FCFF) is conceptually how much cash is left over after the firm pays for the cost of operating the firm (in cash).  FCFF is somewhat different from Free Cash Flow, which is often computed as cash provided by operations (from the cash flow statement) minus capital expenditures.


</p> <p>For a firm whose current liabilities consist of accounts payable and whose current assets consist of accounts receivable and inventories, and does not pay stock-based compensation nor interest expense, FCF would be something like:

$$ FCF = EBIT - taxes + DnA +  \Delta AP - \Delta AR - \Delta Inv - CapEx  $$

In Damodaran's spreadsheet, he measures it as EBIT less taxes and reinvestment. First, consider the case when the company is not growing, then reinvestment would equal 0 and Damodaran is computing FCFF as `\(EBIT - taxes\)` which makes sense if investments in noncash working capital are 0 `\(( \Delta AP - \Delta AR - \Delta Inv = 0\)` ) and CapEx is
being used to offset Depreciation and Amortization `\((DnA = CAPex)\)`. When there is growth, reinvestment is being
used to finance the CapEx associated with increasing fixed assets as well as the investments in working capital.

To the extent that a firm has interest expense, this expense is not reflected in FCFF, which is correct in this context as the enterprise value of the firm is the present discounted value of the cash flows produced (or consumed) by operations independent of how the firm is being financed.  On a cash flow statement, one computes cash provided by operations by starting with net income and adding back non-cash expenses and then subtracting out non-cash revenues.  Consequently, FCF incorporates implicity whatever interest expense the company may have incurred.

To the extent that a firm is using stock-based compensation (SBC) to pay its employees, this expense is added back to net income in computing cash provided by operations as it is a non-cash expense, so FCF ignores SBC.  FCFF as computed above treats stock-based compensation as if the firm was issuing equity to pay its employees in cash. In the context of computing the enterprise value of a company this is correct.

In computing FCFF as above there is an implicit assumption that non-cash expenses of depreciation and amortization is being paid for through the cash expense of capital expenditures.  A common "non-GAAP adjustment to earnings" is the amortization of intangible assets, which often occurs when a company buys another company. In such circumstances, this expense is non-cash in the sense that it has already been paid for. In such circumstances, adding this expense back to EBIT in calculating FCFF may be appropriate (See [Salesforce blog post](https://douglasdwyer.netlify.app/post/2023/05/30/salesforce-and-stock-based-compensation/)).

# Return on Investment and Asset Turnover

If you install assets, your return on investment is equal Asset Turnover multiplied by Operating Margin multiplied by one minus the tax rate:


$$ ROI_t  = RevToCap_t \big( om_t \big) (1-taxRate_t) $$

In Damodaran's spreadsheet, he computes terminal reinvestment as: 


$$ reinvestment_T = \frac{ om_T Rev_T (1-taxRate_T)}{ROI_T} $$

after substitution for `\(ROI_T\)` becomes 

$$ reinvestment_T = \frac{Rev_T}{RevToCap_T}.$$  

After time period T, as `\(Rev\)` is growing at a constant rate `\(reinvestment\)` is growing at a constant rate which is necesary to apply the Gordon Growth model to do the terminal valuation calculation. 

In order to do the terminal value calculation, you need to either specify the terminal value for ROI which implies a terminal value for Asset Turnover, or you need to specify a terminal value for Asset Turnover which implies a terminal value for ROI. I find working with Asset Turnover at termination to be more intuitive, particularly if you are valuing a firm that is in decline, but you end up at the same place. Interestingly, one can show that increasing terminal `\(growth\)` only increases enterprise value if `\(ROI_T\)` is greater than `\(WACC_T\)`. 






