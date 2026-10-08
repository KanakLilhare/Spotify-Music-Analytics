# Spotify Music Analytics

A data analytics project that explores Spotify music data to identify trends in **tracks, artists, genres, popularity, and audio characteristics**. The project uses **Python for data cleaning, PostgreSQL for data storage and querying, and Power BI for interactive visualization**.

##  Project Overview

The goal of this project is to transform raw Spotify track data into meaningful insights through an end-to-end data analytics workflow.

The project covers:

* Data cleaning and preprocessing using Python
* Exploratory data analysis using Pandas
* Loading cleaned data into PostgreSQL
* SQL-based data analysis
* Interactive dashboard development using Power BI
* Analysis of popularity, genres, explicit content, and audio features

##  Technologies Used

* **Python**
* **Pandas**
* **NumPy**
* **PostgreSQL**
* **SQL**
* **Power BI**
* **Jupyter Notebook**
* **Git & GitHub**

## Project Workflow

```text
Raw Spotify Dataset
        ↓
Data Cleaning & Preprocessing
        ↓
Exploratory Data Analysis
        ↓
PostgreSQL Database
        ↓
SQL Analysis
        ↓
Power BI
        ↓
Interactive Dashboard
        ↓
Business & Music Insights
```

##  Dataset

The dataset contains Spotify track-level information including:

* Track
* Artist
* Album
* Genre
* Popularity
* Danceability
* Energy
* Tempo
* Loudness
* Valence
* Acousticness
* Instrumentalness
* Speechiness
* Explicit Content

The cleaned dataset contains **114K+ Spotify tracks** used for analysis and visualization.

## Data Cleaning

Python and Pandas were used to prepare the dataset for analysis.

Major steps included:

* Handling missing values
* Removing duplicate records
* Checking data types
* Cleaning categorical fields
* Preparing numerical columns
* Creating a cleaned dataset for database loading

The cleaning process is documented in:

```text
notebooks/data_cleaning.ipynb
```

##  PostgreSQL Database

The cleaned Spotify dataset was loaded into a PostgreSQL database named:

```text
spotify_db
```

The main table used for analysis is:

```text
public.spotify_tracks
```

PostgreSQL was used to store and query the cleaned dataset before connecting it with Power BI.

Database loading and related operations are documented in:

```text
notebooks/load_to_postgres.ipynb
```

## Power BI Dashboard

The Power BI dashboard provides an interactive overview of Spotify music data.

### Key KPIs

* **Total Number of Tracks**
* **Total Artists**
* **Total Genres**
* **Average Popularity**

### Dashboard Analysis

The dashboard includes:

*  Top 10 Genres
*  Artist and track analysis
*  Explicit vs Non-Explicit tracks
*  Energy distribution
*  Danceability analysis
*  Popularity analysis
*  Tempo distribution
*  Interactive filters and visualizations

## Key Insights

The analysis helps explore questions such as:

* Which genres have the highest number of tracks?
* How does popularity vary across different genres?
* What proportion of tracks contain explicit content?
* How are energy and danceability distributed across tracks?
* What relationship can be observed between audio features and popularity?
* Which characteristics are common among popular tracks?

## Project Structure

```text
Spotify-Music-Analytics/
│
├── data/
│   └── cleaned/
│       └── final.csv
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   └── load_to_postgres.ipynb
│
├── powerbi/
│   └── Spotify_Music_Analytics.pbix
│
├── screenshots/
│   └── dashboard.png
│
├── README.md
└── requirements.txt
```

## How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/KanakLilhare/Spotify-Music-Analytics.git
```

### 2. Navigate to the Project

```bash
cd Spotify-Music-Analytics
```

### 3. Install Required Python Libraries

```bash
pip install pandas numpy jupyter
```

### 4. Run the Data Cleaning Notebook

Open:

```text
notebooks/data_cleaning.ipynb
```

Run the notebook to generate the cleaned dataset.

### 5. Load Data into PostgreSQL

Configure your PostgreSQL connection and run:

```text
notebooks/load_to_postgres.ipynb
```

This loads the cleaned data into:

```text
spotify_db → public.spotify_tracks
```

### 6. Open the Power BI Dashboard

Open:

```text
powerbi/Spotify_Music_Analytics.pbix
```

Update the PostgreSQL connection if required and refresh the data.

## Dashboard Preview

Add your Power BI dashboard screenshot here:

```markdown
![Spotify Music Analytics Dashboard](screenshots/dashboard.png)
```

## Skills Demonstrated

This project demonstrates practical experience with:

* Data Cleaning
* Exploratory Data Analysis
* Python & Pandas
* SQL
* PostgreSQL
* Data Visualization
* Power BI
* Dashboard Development
* Data Analysis
* Git & GitHub

## Future Improvements

* Add automated ETL pipelines
* Perform advanced statistical analysis
* Add more detailed artist-level analysis
* Integrate Spotify API data
* Add automated data refresh
* Deploy the dashboard for online access

## Author

**Kanak Lilhare**

Computer Science & Engineering (Data Science)

GitHub: [KanakLilhare](https://github.com/KanakLilhare)
