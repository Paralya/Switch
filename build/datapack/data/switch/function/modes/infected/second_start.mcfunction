
#> switch:modes/infected/second_start
#
# @within	switch:modes/infected/second
#

# Players can't die during start countdown
execute if score #infected_seconds switch.data matches ..-1 run effect give @a[tag=!detached] resistance 3 255 true
execute if score #infected_seconds switch.data matches ..-1 run effect give @a[tag=!detached] regeneration 3 255 true
execute if score #infected_seconds switch.data matches ..0 as @a[tag=!detached] run attribute @s burning_time base set 0
execute if score #infected_seconds switch.data matches 1..10 as @a[tag=!detached] run attribute @s burning_time base set 1

# Countdown for starting the game
execute if score #infected_seconds switch.data matches -10..-2 run scoreboard players operation #temp switch.data = #infected_seconds switch.data
execute if score #infected_seconds switch.data matches -10..-2 run scoreboard players operation #temp switch.data *= #-1 switch.data
execute if score #infected_seconds switch.data matches -3..-1 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
execute if score #infected_seconds switch.data matches 0 run function switch:modes/infected/secrets/load
execute if score #infected_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/infected/death/human_spawn

# Tellraws
function switch:translations/modes_infected_second_start

