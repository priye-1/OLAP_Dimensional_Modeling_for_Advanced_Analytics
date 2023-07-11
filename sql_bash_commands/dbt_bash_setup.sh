# create virtual environment
python -m venv .venv

# activate virtual environment on mac
source .venv/bin/activate

## Installing dbt-bigquery will also install dbt-core and any other dependencies.
pip install dbt-bigquery 

## create dbt project
dbt init <dbt project name>

## choose database bigquery, snowflake, redshift, etc
## choose authentication method (oauth recommended)
## get gcp project id from google cloud platform
## choose dataset and enter all other options 

## check for issues with setup
cd <dbt project name>
dbt debug

##using homebrew - install gcloud
brew install --cask google-cloud-sdk

# login to profile
gloud init

## connect dbt and bigquery using Local OAuth gcloud setup - - https://docs.getdbt.com/docs/core/connect-data-platform/bigquery-setup#oauth-via-gcloud. Run command:
gcloud auth application-default login --scopes=https://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/drive.readonly,https://www.googleapis.com/auth/iam.test

# run command again to ensure that all checks passed
dbt debug

# create tables in staging layer as views
dbt run --full-refresh

# update a particular table in a particular model
dbt run -m staging.stg_customer
dbt run -m warehouse.dim_customer



