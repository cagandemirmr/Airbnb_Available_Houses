# **Airbnb Data Analysis and Visualization**
![indir (1)](https://github.com/user-attachments/assets/4956e544-a260-41f5-8f3f-48b66544f9c7)

## **Project Overview**
This project focuses on analyzing Airbnb data to uncover insights about property listings and their availability in Istanbul. Initially, Tableau was used for visualization, but due to its 1,000,000-row limit, data preparation and optimization were conducted using SQL and Python. The final dashboard includes bar charts, a line graph, and a table to provide clear and actionable insights.

## **Technologies Used**
- **SQL**: Data cleaning, joining, and filtering.
- **Python**: Additional data cleaning and optimization.
- **Tableau**: Data visualization.

## **Data Preparation**

### **SQL Operations**
To clean and join the data efficiently:
```sql
SELECT * 
FROM listings a
JOIN reviews b 
ON a.id = b.listing_id 
WHERE a.host_is_superhost IS NOT NULL 
  AND a.description IS NOT NULL 
  AND a.bathrooms IS NOT NULL 
  AND a.beds IS NOT NULL 
  AND a.price IS NOT NULL 
  AND b.first_review IS NOT NULL;
```

### **Python Operations**
1. Removed unrealistic data for dates beyond December 2024:
```python
df = df[df['date'] < pd.Timestamp('2025-01-01')]
```
2. Filtered to include only available houses in Istanbul, reducing rows from 1,346,000 to 939,000.

## **Dashboard Design**
The final Tableau dashboard includes:
1. **Bar Charts**:
   - To analyze key attributes like room types and superhost statuses.
2. **Line Graph**:
   - To show trends over time.
3. **Table**:
   - To display the availability of bedrooms.

## **Challenges**
1. Tableau's row limit required preprocessing in SQL and Python to ensure the dataset was manageable.
2. Python proved more efficient than SQL for handling large datasets and reducing memory usage.
3. Filtering null values and unnecessary data significantly reduced the dataset size while retaining relevant information.

## **Final Dashboard**
The final visualization can be accessed via [Tableau Public](https://public.tableau.com/shared/2DRMD8QB8?:display_count=n&:origin=viz_share_link).
![image](https://github.com/user-attachments/assets/24d1f358-b2a2-4f6a-a6bd-71a866eb1707)

