
import math

score = 'execute if score #red_points switch.data matches '
max = 2000
min = 0

files = int(math.sqrt(max))
split = max / files
for i in range(1, files+1):
	f = open(str(i)+".mcfunction", "a")
	f.write('\n')
	temp = 0
	while temp <= split and min <= max:
		f.write(score+str(min)+' run team modify switch.temp.sidebar.1 suffix [{"text":"uipe Rouge : ","color":"red"},{"text":"'+str(min)+'","color":"yellow"}]\n')
		min += 1
		temp += 1
	f.write('\n')
	f.close()

f = open(".mcfunction", "a")
f.write('\n')
temp = 0
i = 1
while temp <= max:
	f.write(score+str(temp)+'..'+str(temp+split)+' run function switch:modes/rush_the_point/update_sidebar/red_points/'+str(i)+'\n')
	temp += split+1
	i += 1
f.write('\n')
f.close()

