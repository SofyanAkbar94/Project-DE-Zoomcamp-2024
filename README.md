**SPOTIFY DATA INSIGHTS**

**INTRODUCTION**
  
<p align="justify"> The Spotify dataset offers a comprehensive view into the world of music streaming, providing valuable insights into user preferences, popular trends, and artist dynamics within the platform. With its vast repository of anonymized user data, encompassing diverse genres, artists, albums, and tracks, the dataset serves as a goldmine for researchers, analysts, and music enthusiasts alike. By delving into this rich dataset, analysts can uncover intriguing patterns, identify emerging trends, and gain a deeper understanding of the ever-evolving landscape of music consumption. </p>
  <p align="justify"> Spotify dataset provides a wealth of information that can be leveraged to gain valuable insights into music consumption behavior, user preferences, and industry trends. Through careful analysis and interpretation, researchers and stakeholders can unlock actionable insights to inform decision-making, drive innovation, and enhance the overall music streaming experience for listeners worldwide. </p>

**PROBLEMS IN THIS PROJECT**

**- Problem in terraform in main.tf file**

  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/c5038c5c-a869-4873-ba2a-e02b85bd49aa)
  
  **Solution :**
  
  Avoid using name of project for connect gcp, solutions use project id
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/a1710c5b-c4dd-48c0-b6da-2fa05a54cf0b)
  
**- Problem in export from mage cloud to GCS**

  If you’re set a path from your JSON file location (GOOGLE_SERVICE_ACC_KEY_FILEPATH: "/path/to/your/service/account/key.json") gets an error like this :
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/b94c5529-ef25-4dfd-b84d-bff73cd7d360)
  
  **Solution :**
  
  Copy all data in “your_key.json” set a path in json file into ‘io_config.yaml’
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/dce642a4-2180-40bb-9c6c-bfcde6a7ff4c)
  
**- Problem in DBT**

  Cannot preview or create table in google bigquery
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/eff85f1a-a2cc-4755-8131-d220eb95dfc4)
  
**  Solution : **

  Give a permission to Storage Object Viewer and Storage Object Creator.
  
  ![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/881c1eaa-60f1-4b01-9e3b-00a4dc644aab)

**USED TECHNOLOGIES**
- Terraform - as Infrastructure-as-Code (IaC) provide setup gcp services;
- MageAI - for orchestration extract, transform, load;
- Google Cloud Run - for run mage in cloud;
- Google Cloud Storage (GCS) - as data lake for storing files;
- Google BigQuery - as data warehouse;
- dbt - as data transformation from data warehouse;
- Google Looker studio - for visualizations data. 

**INSIGHTS  DASHBOARD**

![image](https://github.com/SofyanAkbar94/Project-DE-Zoomcamp-2024/assets/136363515/e982d182-d4a7-4bde-baa3-bd32b2cde8a8)
