# broses_dw
DBT transformations for cleaning, staging, and modeling data within the Bryant Roses data warehouse, including sales, streaming, and other business metrics.

# broses_dw

This repository contains the dbt project used to transform and model data for the Bryant Roses LLC data warehouse. It includes transformations for cleaning, staging, and modeling data related to sales, streaming, and other key business metrics.

## Getting Started

### Prerequisites

*   **Python:** Python 3.13
*   **dbt:** dbt-core and the dbt-bigquery adapter are required.  These will be installed via the `requirements.txt` file.
*   **BigQuery Account:** Access to a BigQuery project is necessary.

### Setup

1.  **Clone the repository:**

    git clone https://github.com/brosenwinkel/broses_dw.git
    cd broses_dw

2.  **Create and activate a virtual environment:**

    # Creates a virtual environment named "broses_dw"
    python3 -m venv venv_broses_dw 

    # Activate Virtual Environment
    source /Users/bryant/Projects/venvs/venv_broses_dw/bin/activate

    # Deactivate virtual environment
    deactivate


3.  **Install dependencies:**

    # Create initial requirements.txt or add updates
    pip freeze > requirements.txt

    # Install the requirements doc
    pip install -r requirements.txt

    # Install dbt ONLY IF NEEDED (should be taken care of by requirements.txt)
    pip install dbt-core==1.9.2
    pip install dbt-bigquery==1.9.1

    # Check dbt version
    dbt --version

    This will install dbt and all other required Python packages, including the correct versions specified in the `requirements.txt` file.

4.  **Configure dbt:**


    dbt init dbt_broses_dw
    
    *   Create a `profiles.yml` file in the correct location (`~/.dbt/` on macOS/Linux or `%USERPROFILE%/.dbt/` on Windows).  You can copy and adapt the following template:

    ```yaml
    broses_dw:
      target: dev
      outputs:
        dev:
          type: bigquery
          project: your-bigquery-project-id  # **REPLACE THIS**
          dataset: your_bigquery_dataset_name  # **REPLACE THIS**
          keyfile: /path/to/your/bigquery/service_account_key.json  # **REPLACE THIS - DO NOT COMMIT THIS FILE**
          threads: 4
    ```

    *   Replace the placeholder values in `profiles.yml` with your BigQuery project ID, dataset name, and the path to your service account key file.  **Do not commit your actual `profiles.yml` file to the repository.**  It contains sensitive information.

5.  **Run dbt:**

    dbt debug  # Test your connection to BigQuery
    dbt run    # Run your dbt models

## Project Structure (Add more detail as your project grows)

*   `models/`: Contains your dbt SQL models.
*   `data/`:  (If used) Contains seed data or other data files.
*   `macros/`: (If used) Contains reusable dbt macros.
*   `tests/`: (If used) Contains dbt tests.
*   `requirements.txt`: Lists the project's Python dependencies.
*   `profiles.yml`: (Not committed to the repo) Contains BigQuery connection details.

## Data Sources

*   Shopify (Sales Data)
*   [List other data sources, e.g., Spotify API, Apple Music API]

## dbt Models (Add more detail as your project grows)

*   `stg_sales`: Staging model for sales data from Shopify.
*   `stg_streaming`: Staging model for streaming data.
*   `dim_products`: Dimensional model for products.
*   `fact_sales`: Fact table for sales transactions.
*   [Add other model descriptions]


## Contact

bryantrosesmusic@gmail.com [Your Email Address or other contact info]






