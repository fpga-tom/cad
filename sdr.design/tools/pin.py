import csv
with open('ep4ce22.txt', 'r') as csvfile:
	pin = csv.reader(csvfile, delimiter='\t')
	lb = ''
	ioc=0
	for row in pin:
		if row[6]:
			n = row[2]
			if lb != row[0]:
				lb = row[0]
				ioc = 0
			if row[3]:
				n = '_'.join([row[2],row[3]])
			if row[2] == 'IO':
				n = '_'.join([row[0],row[2]+str(ioc),row[3]])
				ioc += 1

			print 'pin ' + n+ '={' + row[6] + '};'

print '------------------------------------'
with open('cy7c68013a_128.txt', 'r') as csvfile:
	pin = csv.reader(csvfile, delimiter=' ')
	for row in pin:
		if row[0]:
			n = row[1]
			print 'pin ' + n+ '={' + row[0] + '};'
print '------------------------------------'
with open('ksz8081mlx.txt', 'r') as csvfile:
	pin = csv.reader(csvfile, delimiter=' ')
	for row in pin:
		if row[0]:
			n = row[1]
			print 'pin ' + n+ '={' + row[0] + '};'
