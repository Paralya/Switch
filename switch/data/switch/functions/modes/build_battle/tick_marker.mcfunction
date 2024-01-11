
# Prevent players from breaking zone
execute if data storage switch:main {map:"build_battle"} run place template switch:build_battle

# Check if player changed ground (Only during building time)
execute if score #build_battle_state switch.data matches ..1 unless block ~3 ~2 ~3 #switch:build_battle_antiground unless blocks ~3 ~2 ~3 ~3 ~2 ~3 ~3 ~-2 ~3 masked run function switch:modes/build_battle/building_time/change_ground

# Mob cap
scoreboard players set #entity_count switch.data 0
execute positioned ~1 ~ ~1 store result score #entity_count switch.data if entity @e[type=!player,type=!marker,dx=45,dy=35,dz=45]
execute if score #entity_count switch.data matches 24.. run kill @e[type=!player,type=!marker,dx=45,dy=35,dz=45,sort=random,limit=2]

