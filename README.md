# SPOTIFY DATA INSIGHTS


## INTRODUCTION
  
<p align="justify"> The Spotify dataset offers a comprehensive view into the world of music streaming, providing valuable insights into user preferences, popular trends, and artist dynamics within the platform. With its vast repository of anonymized user data, encompassing diverse genres, artists, albums, and tracks, the dataset serves as a goldmine for researchers, analysts, and music enthusiasts alike. By delving into this rich dataset, analysts can uncover intriguing patterns, identify emerging trends, and gain a deeper understanding of the ever-evolving landscape of music consumption. </p>
  <p align="justify"> Spotify dataset provides a wealth of information that can be leveraged to gain valuable insights into music consumption behavior, user preferences, and industry trends. Through careful analysis and interpretation, researchers and stakeholders can unlock actionable insights to inform decision-making, drive innovation, and enhance the overall music streaming experience for listeners worldwide. </p>

## PROBLEMS IN THIS PROJECT

### - Problem in terraform in main.tf file

  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/c5038c5c-a869-4873-ba2a-e02b85bd49aa)
  
  ### Solution :
  
  Avoid using name of project for connect gcp, solutions use project id
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/a1710c5b-c4dd-48c0-b6da-2fa05a54cf0b)
  
### - Problem in export from mage cloud to GCS

  If you’re set a path from your JSON file location (GOOGLE_SERVICE_ACC_KEY_FILEPATH: "/path/to/your/service/account/key.json") gets an error like this :
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/b94c5529-ef25-4dfd-b84d-bff73cd7d360)
  
  ### Solution :
  
  Copy all data in “your_key.json” set a path in json file into ‘io_config.yaml’
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/dce642a4-2180-40bb-9c6c-bfcde6a7ff4c)
  
### - Problem in DBT

  Cannot preview or create table in google bigquery
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/eff85f1a-a2cc-4755-8131-d220eb95dfc4)
  
### Solution :

  Give a permission to Storage Object Viewer and Storage Object Creator.
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/881c1eaa-60f1-4b01-9e3b-00a4dc644aab)

## USED TECHNOLOGIES
- Terraform - as Infrastructure-as-Code (IaC) provide setup gcp services;
- MageAI - for orchestration extract, transform, load;
- Google Cloud Run - for run mage in cloud;
- Google Cloud Storage (GCS) - as data lake for storing files;
- Google BigQuery - as data warehouse;
- dbt - as data transformation from data warehouse;
- Google Looker studio - for visualizations data.

## Dataset
Dataset for this project source from : https://huggingface.co/datasets/maharshipandya/spotify-tracks-dataset/blob/c4609440b24ac4075899f6e60b33775acbe00827/dataset.csv 

Here the DAG from mage :

![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/c91c33dd-ca6b-4d11-a085-a3aadaec7bc9)

Here the dbt lineage graph :

![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/c7cb963a-7f08-4a84-8c6b-08344b859595)

Due to this dataset doesn't have datetime or timestamp this data cannot be partitioned.

Clustered by genre column to improve performance.

## DATA ARCHITECTURE & WORKFLOW

![Work Flow](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/772944b3-e0f3-468f-87a5-8f24260d4a9e)

**1. Data Ingestion from Web API:**
     Utilize Cloud Run to create a scalable and serverless solution for fetching data from the Web API using Mage. Store the extracted data in a Cloud Storage

**2. Extract, Transform, Load (ETL) using Mage:**
     Use Mage to perform ETL operations on the raw data fetched from the Web API. Implement data transformations to cleaning data from null data, converted to minute and rename column name. Load data into a Cloud Storage.

**3. Save Data in Google Cloud Storage as Data Lake:**
     Store the transformed data in Google Cloud Storage as a data warehouse for long-term storage and analysis.

**4. Data Transformation using dbt:**
     Set up a dbt to orchestrate and define transformation logic such as aggregations, joins, and calculations within dbt models to generate analytical datasets. Execute dbt jobs to build and run the defined transformations and generate output datasets in the data warehouse for using in looker studio.

**5. Data Visualization using Looker Studio:**
     Connect Looker to the data warehouse or BigQuery where the transformed datasets reside. Create dashboards, reports, and visualizations using Looker's drag-and-drop interface to giving insights effectively.

## INSIGHTS  DASHBOARD

![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/e982d182-d4a7-4bde-baa3-bd32b2cde8a8)

## Reproduce (will be update)

Create infrastructure using Terraform

To manage infrastructure in this project uses tool Terraform To install terraform read documentation
Config terraform

    Enter terraform folder
    Open file version.tf
    Change variables if nessesary

Check execute plan

    Open terminal
    Enter to terraform folder. If you in project root folder run coomand cd terraform
    Run command terraform plan
        Fill your billing id
        Fill your project name
        Type "yes"
        Press enter
    Check if everything is correct, fix errors if occurs and check everything again

Apply infrastructure

    Run command terraform apply
        Fill your billing id
        Fill your project name
        Type "yes"
        Press enter
    Check if everything is correct
    Go to GCP console

## Acknowledgments

<p align="justify">I would like to extend my heartfelt gratitude to Alexey and the entire DataTalks.Club community for their invaluable contribution in organizing and hosting the Zoom camp, and generously sharing knowledge and expertise with participants, all free of charge.</p>

<p align="justify">Your dedication to fostering learning and professional development within the data community is truly commendable. Through the Zoom camp sessions, you have provided an invaluable platform for individuals to expand their skills, explore new technologies, and engage with industry experts in a supportive and collaborative environment.</p>
<p align="justify">Thank you, Alexey, and everyone at DataTalks.Club, for your unwavering dedication to education, collaboration, and community building. We look forward to continuing our journey of learning and discovery together.</p>
