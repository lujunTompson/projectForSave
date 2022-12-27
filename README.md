# C++ MySQL Programming 


## Project Structure

`saveProject.cpp`: the file contains the 'main' function. Program execution will start and end here.

`MySQLConnector.h` and `MySQLConnector.cpp` : defines a class `MySQLConnector`, which is used to connect to MySQL database, query results based on rules and close the connection.

`RuleOneResp.h` and `RuleOneResp.cpp` : defines a class `RuleOneResp` to store each record acquired from executing sql statement based on rule 1. 

`RuleTwoResp.h` and `RuleTwoResp.cpp` : defines a class `RuleTwoResp` to store each record acquired from executing sql statement based on rule 2. 

`Util.h` and `Util.cpp` : defines a class `Util` which is specially used for data input and output operation such as printing the query results to screen and files.



## Data preprocessing

Use `pandas` to do data preprocessing for two csv files. Main steps include:

For `account_info.csv` :

1. delete white spaces at the head of keys . This step is for subsequent manipulations of data. 
2. check duplicate rows with the same `account_number` . Because we use `account_number` as the primary key, we need to make sure the imported data maintain the uniqueness.

For `transactions.csv` :

1. move the hyphen symbol to the front of value in `transaction_amount`. For example, `1.06-` converts to `-1.06`.
2.  delete `FROST` in `merchant_number`: if the merchant account is frozen, we can remove it directly. (note: we can also choose to keep it in database. This depends on the design requirement of the database)
3. replace `XXUS` with `XX` in `merchant_description`: some value in `merchant_description` end with `XXUS`. It should only include the state abbreviation. we delete `US` for date format consistency. For example, `MAVERIK #488 DRAPER LAUS`  converts to `MAVERIK #488 DRAPER LA`.

After we finish data preprocessing, we export the data to csv files. `account_info_new.csv` and `transaction_new.csv` in `doc` directory are data being cleaned.

Relevant python code is in `data_cleaning.ipynb`



## Database details

We use local MySQL database. The database name is `save`.

### Schema

Here we have two tables:

`account_info` table schema:

![image-20221227114740608](https://user-images.githubusercontent.com/64528390/209716189-306f1727-dc8d-445b-86d3-15b21792ab95.png)



`transaction` table schema:

![image-20221227114843883](https://user-images.githubusercontent.com/64528390/209716236-bccce83e-9ded-4b4a-bed9-dc2aeb990ad9.png)

foreign key:

![image-20221227114922159](https://user-images.githubusercontent.com/64528390/209716278-42c807e6-037c-4a31-b0b0-276b5e649b63.png)

`account_info_schema.sql` and `transaction_schema.sql` files are the sql scripts to create two tables. 

### Import

We use `Navicat` to import csv data directly into MySQL database.



## Rule 1

Here we want to detect abnormally high transaction amount in the transaction table. We have some possible methods to do outliers detection. When we consider customers' purchasing behaviors, we see that the purchasing amount value greatly depends on the merchant category and the customers' purchasing habit. Therefore, the distribution of amount value would not be standard distribution. It's more like a cluster distribution. For example, if a user buys digital devices from BestBuy, then the average amount value would be quite higher than if the user buys stuff from HEB or Walmart.  So we decide to use boxplots method. Because it consider the lower quartile and higher quartile, which covers the major range of amount value that the user usually spends. The abnormal standard is :

```sql
transaction_amount > 1Quartile + 15 * (3Quartile - 1Quartile)
```

![image-20221227122754395](https://user-images.githubusercontent.com/64528390/209716300-74c8b16f-a3ba-42ce-907d-a594e147d560.png)

We write a sql statement to do this work, which is in `rule1.sql`



## Rule 2

Rule 1 is relatively easier to implement compared to rule 2. We just join two tables based on `account_number` and then check if the `state` field in `account_info` table is equal to the state information in `merchant_description` of `transaction` table. 

We also write a sql statement to do this work, which is in `rule2.sql`  



## Running Results

`saveProject.cpp` is the entrance of the whole project.

Rule 1 result:

![image-20221227124836321](https://user-images.githubusercontent.com/64528390/209716325-e2846605-c0e1-4600-bb64-0164f4d9d442.png)



Rule 2 result:

![image-20221227124857085](https://user-images.githubusercontent.com/64528390/209716354-f8bdee1b-7a2e-418f-bfe8-45f03ce0ebfe.png)





