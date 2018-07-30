config

documents = find(mongoconn, "people",'Sort','{"BMI":-1.0}','Limit',5)
result = struct2table(documents)
disp("Top 5 people BMI:")
disp(result)