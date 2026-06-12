# Awesome Chocolates Sales & Shipment Analysis (SQL)

## Project Overview
This project presents a structured database analysis for "Awesome Chocolates" using MySQL. The analysis spans cross-border shipment values, sales team efficiencies, geographic target performance, and product category trends. 

By creating and executing foundational, intermediate, and advanced operational queries, these scripts solve key supply chain and retail questions—such as pinpointing seasonal shipment spikes, analyzing specific item behaviors (e.g., Milk Bars vs. Eclairs), and identifying missing transactional links within targeted date blocks.


## Analysis Framework & Key Questions
The investigative roadmap spans simple filtering requirements to complex contextual logic, organized across three distinct analytical levels:

### 1. Foundational Filtering & Sorting (Easy)
* How can we extract basic transaction records, derive customized metrics (like `Amount per box`), and apply threshold boundaries for sales values exceeding $10,000?
* How do we filter product arrays or personnel records matching structural patterns (e.g., tracking specific sales teams or filtering staff names starting with 'B')?

### 2. Cross-Table Operational Metrics (Intermediate)
* How many total documented shipments did individual team members successfully finalize during January 2022?
* Which specific confectionery line yields higher total physical box volume sales between Milk Bars and Eclairs overall, and how does that ranking shift during localized weekly time windows?
* Which low-density transactions fall under strict thresholds (< 100 customers and < 100 boxes), and did any of those occur on a Wednesday?

### 3. Complex Global Contexts (Hard)
* Who are the specific individuals pushing volume at the start of a quarter, and conversely, which distinct team members failed to file a single shipment line during the first week of January 2022?
* What is the rolling multi-year, month-over-month count of bulk orders where the warehouse dispatched greater than 1,000 distinct chocolate boxes?
* Between major international markets like India and Australia, which region consumes a higher aggregate volume of chocolate boxes when grouped on a sequential monthly timeline?


## Database Schema & Structure
The normalized schema architecture models a typical multi-market retail distribution loop:
* **`sales`:** The central transaction ledger capturing foreign key pointers (`SPID`, `GeoID`, `PID`), exact `SaleDate` execution times, currency `Amount`, unique `Customers` served, and physical `Boxes` shipped.
* **`products`:** Inventory dimension table categorizing unique items via `PID`, along with descriptive attributes like `Product` name, `Category`, pack `Size`, and production `Cost_per_box`.
* **`people`:** Personnel registry mapping corporate identifiers (`SPID`) directly to human `Salesperson` identities, operational `Team` labels, and regional office `Location` details.
* **`geo`:** Geographic map table routing unique `GeoID` zones into parent descriptive countries (`Geo`) and high-level macroeconomic distribution territories (`Region`).


## Key Technical Skills Demonstrated
* **Calculated Fields & Dynamic Aliasing:** Embedding ad-hoc math operations directly inside query declarations (`Amount / boxes`) to generate runtime business KPIs under standardized column names.
* **Multi-Table Relational Mapping:** Executing explicit `JOIN` logic connecting primary key/foreign key vectors across various relational tables (`sales`, `people`, `products`, `geo`).
* **Conditional Matrix Pivoting:** Leveraging advanced `CASE WHEN` logical expressions inside mathematical sum operations (`SUM(CASE WHEN...)`) to pivot horizontal country-level comparative metrics directly out of vertical raw records.
* **Exclusionary Sub-select Queries:** Constructing nested subqueries using negative membership expressions (`NOT IN (...)`) to easily isolate non-performing operational actors during target calendar ranges.


## Author

Priya Patel  
Aspiring Data Analyst  
Email: priyapatel18217@gmail.com  
GitHub: [priyapatel96140](https://github.com/priyapatel96140)  

If you like this project, feel free to give it a star!
