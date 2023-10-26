
scoreboard objectives remove switch.rtb.id
scoreboard objectives remove switch.rtb.time
scoreboard objectives remove switch.rtb.points
scoreboard objectives remove switch.temp.deathCount

execute as @e[type=marker,tag=switch.rtb.island] run function switch:modes/replicate_the_build/structure/destroy
execute as @e[type=marker,tag=switch.rtb.center] run function switch:modes/replicate_the_build/structure/destroy

bossbar remove rtb.all

