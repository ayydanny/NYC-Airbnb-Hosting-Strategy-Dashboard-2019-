SELECT *
FROM ab_nyc_2019;

SELECT DISTINCT neighbourhood_group
FROM ab_nyc_2019;

SELECT
	neighbourhood_group AS borough,
	COUNT(*) AS listings,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(reviews_per_month), 2) AS avg_monthly_reviews,
    ROUND(AVG(minimum_nights), 2) AS avg_minimum_nights,
    ROUND(AVG(price) * AVG(reviews_per_month), 2) AS opportunity_score
FROM ab_nyc_2019
GROUP BY neighbourhood_group
ORDER BY avg_price DESC;

# Manhattan
# Commands the highest nightly prices and highest minimum booking value.
# Generates the highest opportunity score in this analysis.
# Hosts appear to rely on fewer guests staying for longer periods.
# Competition is also extremely high, with over 21,000 listings.

# Queens
# Shows the strongest review activity among major boroughs.
# Lower nightly prices may contribute to stronger guest demand.
# Presents an attractive balance between demand and competition.

# Staten Island
# Produces a surprisingly high opportunity score despite lower prices.
# Competition is extremely limited compared to other boroughs.
# Due to the small sample size, findings should be interpreted cautiously.

# Brooklyn
# Represents one of the largest Airbnb markets in NYC.
# Offers moderate pricing and demand metrics.
# Appears to be a stable middle-ground option rather than a premium market.

# Bronx
# Lowest average nightly price.
# Strong review activity relative to price.
# Could appeal to hosts pursuing a volume-based strategy.

# Premium Strategy
# Manhattan, Higher prices, Longer stays, Fewer guests

# Balanced Strategy
# Queens, Moderate prices, Higher demand

# Low Competition Strategy
# Staten Island, Smaller market, Less competition

# There is no universally best borough. Manhattan offers the greatest pricing power, Queens demonstrates the strongest demand indicators, and Staten Island presents a potentially underserved market with limited competition. The optimal location depends on whether a host prioritizes premium pricing, occupancy, or market accessibility.

SELECT
	room_type,
    COUNT(*) AS total_listings,
    ROUND(AVG(price),2) AS avg_price,
    ROUND(AVG(reviews_per_month),2) AS avg_monthly_reviews,
    ROUND(AVG(minimum_nights),2) AS avg_minimum_nights,
    ROUND(AVG(price) * AVG(reviews_per_month), 2) AS opportunity_score
FROM ab_nyc_2019
GROUP BY room_type
ORDER BY avg_price DESC;

SELECT
    neighbourhood_group,
    room_type,
    COUNT(*) AS listings,
    ROUND(AVG(price),2) AS avg_price,
    ROUND(AVG(reviews_per_month),2) AS avg_monthly_reviews,
    ROUND(AVG(minimum_nights),2) AS avg_minimum_nights,
    ROUND(AVG(price) * AVG(reviews_per_month), 2) AS opportunity_score
FROM ab_nyc_2019
GROUP BY neighbourhood_group, room_type
ORDER BY neighbourhood_group, room_type;

# In most NYC boroughs, entire-home listings command the highest prices while maintaining review activity comparable to or greater than other room types. Manhattan is a notable exception, where private and shared rooms exhibit stronger review activity despite lower prices. This may indicate that travelers prioritize affordability when staying in Manhattan's premium market.