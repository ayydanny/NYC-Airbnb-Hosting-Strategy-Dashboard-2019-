# NYC-Airbnb-Hosting-Strategy-Dashboard-2019-

## Overview

Are you considering becoming an Airbnb host in New York City but unsure where to start?

This project analyzes the 2019 NYC Airbnb market to help prospective hosts make data-driven decisions regarding where to operate, what type of property to offer, and how to price listings competitively. Using Airbnb listing, pricing, and review data, this analysis identifies market opportunities across NYC boroughs and provides actionable recommendations for different hosting strategies.

<img width="1193" height="795" alt="image" src="https://github.com/user-attachments/assets/37495f21-1eda-4a4c-a035-06f9a20bd09d" />

## Business Problem
A prospective Airbnb host wants to understand:

- Which boroughs offer the strongest hosting opportunities?  
- Which room types perform best in each borough?  
- What pricing ranges should be considered?  
- How can a host balance pricing, demand, and competition?  

This dashboard was created to support those decisions through exploratory data analysis and interactive visualizations.

## Dataset

**Source:** NYC Airbnb Open Data (2019)

The dataset contains approximately 49,000 Airbnb listings across New York City's five boroughs and includes information such as:

- Listing price  
- Room type  
- Neighborhood and borough  
- Reviews and review activity  
- Availability  
- Minimum-night requirements

Because the dataset reflects market conditions from 2019, findings should be interpreted as a historical analysis rather than a representation of the current Airbnb market.

## Data Cleaning

The following cleaning steps were performed:

- Checked for duplicate records  
- Investigated missing values  
- Retained expected null values for review-related fields  
- Removed listings with a nightly price of $0 due to likely data-quality issues  
- Validated pricing distributions and outliers  
- Exported a cleaned dataset for analysis  

## Tool Used

- **SQL:** Data exploration and aggreggation
- **Python (Pandas):** Data cleaning and pricing analysis
- **Tableau:** Dashboard development and visualization

## Analysis Questions
1. Which boroughs command the highest prices?
2. Which borough shows the strongest demand?
3. Which room types provide the strongest hosting opportunities?
4. What pricing range should new hosts consider?

## Key Findings

### Borough Analysis
- Manhattan commands the highest average nightly prices.
- Queens demonstrates the strongest review activity among major boroughs.
- Staten Island presents a potentially attractive low-competition market.
- Higher prices do not necessarily correspond to stronger demand.

### Room Type Analysis
- Entire-home listings generally provide the strongest market opportunities across most boroughs.
- Manhattan is a notable exception, where private and shared rooms show relatively stronger review activity.
- Room-type performance varies significantly by borough.

### Pricing Guidance
- Pricing distributions vary substantially across boroughs and room types.
- Median pricing provides a more representative benchmark than average pricing due to the presence of luxury listings and outliers.
- Hosts can use the pricing guidance visualization to identify competitive and premium pricing ranges.

## Market Opportunity Score

A custom Market Opportunity Score was created using:

Market Opportunity Score = Average Price x Average Monthly Reviews

The metric combines pricing power and guest activity to estimate market attractiveness. It is not a measure of actual revenue or profitability.

## Recommendations

**Premium Strategy:** Manhattan Entire Home
* Highest prices, median prices, and pricing ranges.
* Strongest brand/location appeal.

**Balanced Strategy:** Queens Entire Home
* Strong balance of pricing, demand, and opportunity.
* Each room type performs well in comparison to other boroughs.

**Low Competition Strategy:** Staten Island Entire Home
* Fewest listings, strong opportunity metrics, and lower competition.

**Alternative Manhattan Strategy**
* Private and shared rooms in Manhattan demonstrated stronger review activity than entire-home listings, suggesting that hosts targeting Manhattan may benefit from exploring lower-cost accommodations that appeal to price-sensitive travelers.

## Limitations
- The dataset represents Airbnb listings from 2019 and may not reflect current market conditions.
- Actual booking, occupancy, and revenue data were unavailable.
- Review activity was used as a proxy for demand.
- The Market Opportunity Score should not be interpreted as actual profitability.

## Dashboard
<img width="1193" height="795" alt="image" src="https://github.com/user-attachments/assets/08ee1c28-9ad2-4d96-a8c6-64b0495a1cfc" />
