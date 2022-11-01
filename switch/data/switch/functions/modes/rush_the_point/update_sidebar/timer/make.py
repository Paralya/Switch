
import math

score = 'execute if score #remaining_time switch.data matches '
max = 600
min = 0

files = int(math.sqrt(max))
split = max / files
for i in range(1, files+1):
    f = open(str(i)+".mcfunction", "a")
    f.write('\n')
    temp = 0
    while temp <= split and min <= max:
        minute = str((min//60) % 60)
        second = min % 60
        if second >= 10:
            second = str(second)
        else:
            second = '0'+str(second)
        f.write(score+str(min)+' run team modify switch.temp.sidebar.3 suffix [{"text":"emps restant : "},{"text":"'+minute+'","color":"yellow"},{"text":"m"},{"text":"'+second+'","color":"yellow"},{"text":"s"}]\n')
        min += 1
        temp += 1
    f.write('\n')
    f.close()

f = open(".mcfunction", "a")
f.write('\n')
temp = 0
i = 1
while temp <= max:
    f.write(score+str(temp)+'..'+str(temp+split)+' run function switch:modes/rush_the_point/update_sidebar/timer/'+str(i)+'\n')
    temp += split+1
    i += 1
f.write('\n')
f.close()

