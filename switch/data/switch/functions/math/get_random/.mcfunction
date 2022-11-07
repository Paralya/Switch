
summon marker 0 0 0 {Tags:["switch.random"]}
execute as @e[type=marker,x=0,y=0,z=0,distance=..1,tag=switch.random] run function switch:math/get_random/marker

