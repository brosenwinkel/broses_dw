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


## Contact

bryantrosesmusic@gmail.com






