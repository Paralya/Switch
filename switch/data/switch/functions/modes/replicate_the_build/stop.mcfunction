
tp @e[type=creeper] 0 -10000 0
kill @e[type=arrow]
kill @e[type=creeper]
kill @e[type=item]
kill @e[type=experience_orb]

tag @a remove switch.alive

scoreboard objectives remove switch.rtb.id
scoreboard objectives remove switch.rtb.time
scoreboard objectives remove switch.rtb.points
scoreboard objectives remove switch.temp.deathCount

execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag=switch.rtb.center] run function switch:modes/replicate_the_build/structure/destroy

bossbar remove rtb.all

