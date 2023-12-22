
# Classic timer
scoreboard players add #cigogne_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1
function switch:modes/cigogne/xp_bar

title @a[tag=!detached,gamemode=!spectator] actionbar {"text":"Attention: PVP 1.9+","color":"red"}

# Glowing time
execute as @a[tag=!detached,gamemode=!spectator,predicate=switch:is_sneaking] run scoreboard players add @s switch.temp.sneak 1
scoreboard players remove @a[tag=!detached,gamemode=!spectator,predicate=!switch:is_sneaking] switch.temp.sneak 2
effect give @a[tag=!detached,scores={switch.temp.sneak=200..}] glowing 1 0 true
scoreboard players set @a[tag=!detached,scores={switch.temp.sneak=200..}] switch.temp.sneak 200

