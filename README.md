# PostgreSQL and Power BI Exercise

## 1. Dataset Overview

This dataset contains synthetic production and operational data from 10 factories in Indonesia, spanning multiple years. It includes various metrics related to factory performance, workforce, production quality, operational costs, and efficiency.

This dataset is intended to practice importing data into databases, working with SQL, and creating interactive dashboards using Power BI.

***

## 2. PostgreSQL: Importing the Dataset

### Step 1: Prepare PostgreSQL Environment

Ensure PostgreSQL server is installed and running on your machine or server.

Create or select a database to hold the data.

### Step 2: Import CSV File into PostgreSQL

You have three common ways to import the CSV file `very_random_fact_production_25_columns.csv`:

#### Option A: pgAdmin GUI Import

1. Open pgAdmin, and connect to your database server.
2. Right-click your target table or create a new one.
3. Choose **Import/Export**.
4. Select **Import**, browse your CSV file.
5. Set format to CSV, delimiter as comma (,), and check **Header**.
6. Start the import.

*Note*: The table must exist and have columns matching CSV headers.

#### Option B: DBeaver Import Wizard

1. Connect to your PostgreSQL database.
2. Right-click your schema or table and select **Import Data**.
3. Select your CSV file.
4. Map columns, set delimiter, then execute import.

DBeaver can create tables automatically during import if preferred.

#### Option C: Using PostgreSQL COPY Command

Run the following command in psql or pgAdmin Query Tool:

```sql
COPY your_table_name
FROM 'C:\\full\\path\\to\\production.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',');
```

Replace `your_table_name` and file path accordingly. 

Table must exist with columns in the same order as the CSV.

***

## 3. Power BI: Creating Dashboards

### Step 1: Connect Power BI to PostgreSQL

1. Open Power BI Desktop.
2. Click **Get Data** → **Database** → **PostgreSQL database**.
3. Enter server address, port, and database name.
4. Provide your credentials.
5. Select the imported table and load data.

### Step 2: Build Visual Reports

Use Power BI visuals to explore key metrics like:

- Production trends per factory and year.
- Defect rate and employee performance.
- Safety incidents categorized by shift.
- Energy consumption and waste analysis.

Add slicers and filters for interactive data exploration.

### Step 3: Publish and Share

Publish your reports to Power BI Service and share dashboards with stakeholders for effective data-driven decision-making.

***

## Summary

This exercise guides you through:

- Understanding a detailed synthetic factory dataset.
- Importing CSV data into PostgreSQL via GUI and SQL.
- Connecting PostgreSQL data to Power BI for dashboard creation.
