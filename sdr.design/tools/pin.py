import csv
with open('ep4ce22.txt', 'r') as csvfile:
	spamreader = csv.reader(csvfile, delimiter=' ')
	for row in spamreader:
		...         print ', '.join(row)
