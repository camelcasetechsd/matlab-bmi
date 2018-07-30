
# Matlab BMI
BMI example using MATLAB

## Prerequisites
- MATLAP
- MATLAP Addon (Database ToolBox Interface for MongoDB)
- MongoDB
## How to Use:

 - You need to have MongoDB with Database called `BMI` and collection called `people`
 - Prepare CSV file with same structure as `people.csv` and put it in same directory as rest of MATLAB scripts
 - Run `matlab import_people.m` this should import CSV data to `people` collection in MongoDB
 - Run `matlab top_5_BMI.m` to display top 5 BMI people 


**Note**
 
  This example works with no password MongoDB, if your MongoDB server has user/pass please update the following line in `config.m`

    mongoconn = mongo("localhost",27017,"BMI")
to 

    mongoconn = mongo("localhost",27017,"BMI", 'Username', user, 'Password', pass)

