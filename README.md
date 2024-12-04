# **Interactive Dashboard for Forgotten Florida Race Data Analysis**

---

## **Overview**

This project focuses on creating an interactive dashboard to analyze race data from the Forgotten Florida event held on February 17-18, 2024, in Christmas, Florida. Participants competed in various categories, including 100 Miler, 50 Miler, 15 Miler, and 8 Miler races while only the 50 Miler was selected for this project.. The dashboard was designed to provide insights into participants’ demographics, performance metrics, and overall trends.

---

## **Data Collection Process**

### **Source**
The race results were initially scraped from the UltraSignup platform, which provided comprehensive race data, including participant details and performance metrics. The data was scraped for the following race:

- **Event**: Forgotten Florida
- **Date**: February 17-18, 2024
- **Location**: Christmas, FL
- **Category**: 50 Miler

### **Data Fields**
The scraped data included the following fields:
- **Place**: Position in the race.
- **First Name**: Participant’s first name.
- **Last Name**: Participant’s last name.
- **City**: Participant’s city of residence.
- **Age**: Participant’s age.
- **Division**: Gender category (e.g., M or F).
- **DP**: Division placement.
- **Time**: Completion time.
- **Rank**: Performance score.

---

## **Data Preparation**

### **Step 1: Data Cleaning**
The scraped data was exported to Excel for initial cleaning, where unnecessary columns were removed, and fields were standardized. The cleaned data was saved and then uploaded to Visual Studio Code for further processing.

### **Step 2: Transformation**
- **Geocoding**: City and state were converted to geographic coordinates (latitude and longitude) to enable mapping capabilities.
- **Time Standardization**: Completion times were formatted for consistency and analysis.
- **Additional Fields**:
  - A “Full Name” column was created by combining first and last names.
  - Total time in minutes was calculated for easier statistical analysis.

### **Step 3: Database Integration**
The cleaned data was imported into a PostgreSQL database, allowing for advanced querying and analysis. This enabled aggregation of insights like average times, age group distributions, and gender-based performance metrics.

---

## **Dashboard Features**

### **Visualization Platform**
The interactive dashboard was developed using Looker Studio (formerly Google Data Studio), offering user-friendly exploration of race data.

### **Key Features**
1. **Interactive Filters**:
   - Filter by gender, age group, and state.
   - Select race categories (100 Miler, 50 Miler, etc.).

2. **Charts and Visuals**:
   - **Bar Charts**: Showcase top performers by race category and gender.
   - **Line Graphs**: Highlight average completion times across age groups.
   - **Tables**: Display participant details, rankings, and scores.

3. **Geographic Insights**:
   - A dynamic map visualizing participants’ locations based on city and state.

4. **Performance Metrics**:
   - Breakdown of average times for male and female participants.
   - Age analysis for youngest and oldest competitors.
   - Rankings of top 3 performers by category.

---

## **Insights and Analysis**

### **Demographics**
- Participants came from diverse locations, showcasing a broad geographic representation.
- Age distribution revealed significant participation from individuals aged 30-49.

### **Performance**
- Male participants tended to complete races slightly faster than females in most categories.
- The top 3 performers exhibited exceptional consistency in maintaining high rank scores.

### **Trends**
- Longer race categories (e.g., 100 Miler) showed a higher proportion of participants aged 40+.
- Completion times increased with age, as expected, but top performers demonstrated minimal variance regardless of age.

---

## **Setup Instructions**

### **Step 1: Access the Dashboard**
- Open Looker Studio and connect to the PostgreSQL database containing the race data.

### **Step 2: Apply Filters**
- Use dropdown menus to explore specific race categories, demographics, and performance metrics.

### **Step 3: Explore Visualizations**
- Interact with charts, graphs, and tables to gain insights into race trends and participant performance.

---

## **Future Enhancements**

- Incorporate predictive analytics to estimate future performance trends.
- Add more demographic data, such as income or education levels, to uncover deeper insights.
- Automate data updates for real-time dashboard refreshes after future events.

---

