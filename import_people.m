% include config.m file
config

% read CSV file as table
People = readtable("people.csv")
% calculate BMI and add it to People table as new colum
People.BMI = (People.Weight)./(People.Height).^2;
% insert People table in MongoDB people collection 
numRows = insert(mongoconn, "people",People)
% display the number of rows imported
disp(["Number of rows imported:", numRows])
