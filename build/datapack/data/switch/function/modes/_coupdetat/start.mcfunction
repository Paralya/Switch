
#> switch:modes/_coupdetat/start
#
# @within	switch:modes/_coupdetat/calls/start
#

# @s = player who triggered the coup d'état
# @a[tag=!detached] = all players except detached ones

effect give @s saturation 20 255 true
effect give @s regeneration 1 255 true
tp @a[tag=!detached] 18001.96 111.63 18021.03 -104.49 22.09
gamemode spectator @a[tag=!detached]
gamemode survival @s

# Summon the boss
summon vindicator 18011 112 18008 {Tags:["switch.coupdetat.boss"],Health:100.0f,attributes:[{id:"minecraft:max_health",base:100}],active_effects:[{id:"minecraft:resistance",amplifier:1,duration:-1,show_particles:0b}],equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"Stoupy51"}}}},Glowing:1b}
summon wolf 18011 112 18008 {Tags:["switch.coupdetat.stoupy"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:-1,show_particles:0b}],AngerTime:1000,variant:"chestnut",CollarColor:15b,CustomName:"Stoupy",CustomNameVisible:1b}

# Stop the coup d'état vote
scoreboard players set #coupdetat switch.data 0
scoreboard objectives remove switch.coupdetat_vote

# Create the bossbar
bossbar add switch:coupdetat {"text":"Coup d'état","color":"green"}
bossbar set switch:coupdetat players @a[tag=!detached]
bossbar set switch:coupdetat max 100
bossbar set switch:coupdetat value 100
bossbar set switch:coupdetat color green
bossbar set switch:coupdetat style notched_12

# 50 seconds for the coup d'état
scoreboard players set #remaining_time switch.data 50
scoreboard players operation #remaining_time switch.data *= #20 switch.data

scoreboard players set #coupdetat_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0

# Tag the player and give items
tag @a remove switch.coupdetat
tag @s add switch.coupdetat
function switch:modes/_coupdetat/give_items

function switch:translations/modes__coupdetat_start

