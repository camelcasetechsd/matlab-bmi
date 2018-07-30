% include config.m file
config

% get top 5 records after sorting people collection by BMI field desceing
documents = find(mongoconn, "people",'Sort','{"BMI":-1.0}','Limit',5)
% convert documents struct to table
result = struct2table(documents)
% display table of top 5 BMI people
disp("Top 5 people BMI:")
disp(result)