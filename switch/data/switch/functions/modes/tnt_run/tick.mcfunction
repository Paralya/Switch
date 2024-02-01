
scoreboard players add #tnt_run_ticks switch.data 1

# Death system (every player below is killed)
execute if data storage switch:main {map:"tnt_run_futuristic"} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=118] run function switch:modes/tnt_run/death
execute if data storage switch:main {map:"arti_tnt_run_tower"} as @a[tag=!detached,gamemode=!spectator,sort=random] at @s if entity @s[y=0,dy=105] run function switch:modes/tnt_run/death

# Summon a marker if players are on the ground
execute if score #tnt_run_seconds switch.data matches 0.. as @a[tag=!detached,gamemode=adventure] at @s run function switch:modes/tnt_run/is_on_ground

# Manage destruction of blocks
execute as @e[tag=switch.tnt_run,scores={switch.data=8..}] at @s run function switch:modes/tnt_run/destroy_block
scoreboard players add @e[tag=switch.tnt_run] switch.data 1

## Fin de partie
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/tnt_run/process_end
execute if score #tnt_run_seconds switch.data matches 300.. run function switch:modes/tnt_run/process_end

