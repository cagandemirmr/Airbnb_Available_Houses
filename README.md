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

### Python Operations
- Filtered out unrealistic future data by removing rows with dates beyond December 2024.
```python
# Removing data after December 2024
filtered_data = df[df['date'] < pd.Timestamp('2025-01-01')]
```
- Used Python to manage large datasets that exceeded Tableau's row limitations, efficiently reducing the size of datasets for visualization.

---

## Visualization Tools
### Tableau
- Created bar charts, line graphs, and tables to visualize available bedrooms and trends over time.
- Adjusted data types to `Dimension` in Tableau for specific visualizations, which highlighted Tableau's limitations compared to Power BI in handling certain functionalities.
- Example Dashboard: [Tableau Public Dashboard](https://public.tableau.com/shared/2DRMD8QB8?:display_count=n&:origin=viz_share_link)
![image](https://github.com/user-attachments/assets/24d1f358-b2a2-4f6a-a6bd-71a866eb1707)

---

## Conclusion
- SQL and Python were instrumental in cleaning and processing data due to their efficiency in handling large datasets.
- Visualization tools like Tableau and Power BI complemented the process by providing advanced graphical representations. Power BI was preferred for its advanced features and ease of use in visualizing complex datasets.



