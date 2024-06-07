
# Hotel Data Analysis Project

This project involves scraping data from Booking.com for hotels in Ireland, specifically focusing on prices for one night on a weekend. The raw data was collected using the "Instant Data Scraper" tool and subsequently cleaned and analyzed using Python and SQL. Finally, Power BI was used to create a dashboard for visual insights.

![image](https://github.com/caio-moliveira/hotels-ireland-python-sql-powerBI/assets/150807759/9c7d35a9-0b53-4d7e-ba93-019ee822e821)


## Data Collection

The initial dataset consisted of 502 rows and 16 columns, with each row representing a hotel and the columns as follows:

- hotel name
- city
- certification
- score
- review rate
- reviews
- room type
- occupancy
- Free cancellation
- pay at the property
- No prepayment needed
- rooms left
- nights/adults
- price
- location rate
- bb included

## Data Cleaning

The data cleaning process was executed using Pandas in Python with the following steps:

1. **Checking for duplicate rows**
2. **Checking for null rows or rows with insufficient information**
3. **Dropping unnecessary columns**
4. **Converting 'reviews' into numeric values**
5. **Cleaning the 'location rate' feature**
6. **Removing the € sign from 'price' and converting to float**
7. **Cleaning categorical features and filling null values**
8. **Cleaning 'rooms left' and converting to numeric values**
9. **Saving the cleaned file**


```python
import pandas as pd

# Load data
data = pd.read_csv('booking.csv', encoding = 'UTF-8')

```



## Data Analysis

Using SQL (SSMS), various insights were drawn from the cleaned data, leveraging Common Table Expressions (CTEs) for complex queries. Here are the key questions explored:

1. **Top Rated Hotels**: Which hotels have the highest scores?
2. **Average Score by City**: Identify cities with the highest average hotel scores.
3. **Top 5 Hotels by Score and Review Count**: List the top 5 hotels based on a combination of score and review count.
4. **Hotels with Free Cancellation and High Scores**: Find high-scoring hotels that offer free cancellation.
5. **Price Range Analysis**: Analyze the price range for hotels in each city.
6. **Room Availability by City**: Determine cities with the highest average number of rooms left.
7. **Review Rate Distribution**: Show the distribution of hotels across different review rates.
8. **Impact of Review Count on Score**: Determine if there's a correlation between the number of reviews and the average score.



## Data Visualization

A Power BI dashboard was created to visually represent the insights derived from the analysis we have done earlier using SQL. 

### Power BI Integration

The cleaned data was imported into Power BI, and the following steps were followed to create the visualizations:

1. **Import Data**: Load the `booking_cleaned.csv` into Power BI.
2. **Create Relationships**: Ensure data relationships are correctly set up.
3. **Design Visuals**: Use various Power BI visuals like bar charts, maps, histograms, and scatter plots.
4. **Filter and Slicers**: Add filters and slicers for interactivity.
5. **Publish**: Publish the dashboard to Power BI service for sharing and collaboration.

## Conclusion

This project demonstrates a comprehensive workflow from data collection and cleaning to analysis and visualization. The insights drawn from the data provide valuable information on hotel ratings, prices, and availability in Ireland.

## Repository Structure

- **data/**: Contains the raw and cleaned datasets.
- **python/**: Python scripts for data cleaning.
- **sql/**: SQL scripts for data analysis.
- **powerbi/**: Power BI project file and screenshots.
- **README.md**: Project documentation.

## Getting Started

To replicate this project:

1. Clone the repository
2. Run the Python cleaning script
3. Load the cleaned data into SQL for analysis
4. Import the cleaned data into Power BI for visualization

###  Python 

Load the raw data into your IDE (I used Jupyter Notebook) and execute the code in the 
`python/`



### SQL Execution

Load the cleaned data into your SQL database and execute the queries in the `sql/` directory.

### Power BI

Open the Power BI project file in Power BI Desktop, connect to the cleaned data, and explore the visualizations.

---

This README provides a structured overview of the project, detailing each step from data collection to final visualization. Feel free to contribute or reach out with any questions!


## Acknowledgements

 - [LinkedIn](https://www.linkedin.com/in/caiomoliveira/)
 - [Medium](https://medium.com/@moliveiracaio)
 - [Portfolio]()


## Authors

- [@caio-moliveira](https://github.com/caio-moliveira)

