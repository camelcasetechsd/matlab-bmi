mongoconn = mongo("localhost",27017,"BMI")
People = readtable("people.csv")
People.BMI = (People.Weight)./(People.Height).^2;
numRows = insert(mongoconn, "people",People)
disp(["Number of rows imported:", numRows])
