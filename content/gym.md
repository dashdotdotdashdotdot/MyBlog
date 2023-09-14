---
title: The Gym
author: Douglas W. Dwyer
output: 
  html_document:
    css: styles.css
---

# The Gym

La plaza mayor of Valuation Space is The Gym.  We use The Gym to develop narratives about the valuation of a firm or a group of firms.  In The Gym, users can run numerous exercises on the fly using current financial information and market prices for a sample of US-based non-financial firms (currently the sample consists of 432 firms, 391 of which are in the S&P 500).  For each firm in our sample, The Gym is pre-loaded with trajectories for sales, margin, asset turnover, the cost of capital and the tax rate that are consistent with the current price of the firm. 

You can customize these trajectories to examine the implications of your own views on the firm's possible trajectories and the corresponding valuation. Further, The Gym also performs a value attribution analysis of the firms in the sample.

The Gym is a user interface (UI) frontend that interacts with a server in the cloud running R. Below is a screenshot of the gym, which allows for customization.[^1] For a tour of The Gym please contact me at douglas.dwyer@me.com. 

![](/./gym_files/Gym.png)

[^1]: For example, if you input 20, 20, 2 in the "Growth Values as a Vector" widget, the server creates a vector, c(20, 20, 2), which will be used to override the pre-populated trajectory for revenue growth.  This vector will be used to generate a smooth growth trajectory where growth is 20% in year 1, 20% in year 5, and 2% in year 10.  All the exercises are recalculated on the fly with respect to this new growth trajectory.  Further, if one inputs 1, 10, 20 in the widget "Time Points as a Vector," the new smooth growth trajectory will be extended to maintain growth at 20% for the first 10 years and then tapering off to 2% by year 20.

