
# Replace every wool to concrete
execute as @e[type=item,nbt={Item:{id:"minecraft:white_wool"}}] run data modify entity @s Item.id set value "minecraft:white_concrete"
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_wool"}}] run data modify entity @s Item.id set value "minecraft:blue_concrete"
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool"}}] run data modify entity @s Item.id set value "minecraft:red_concrete"

# Replace every concrete to a command block (to spawn a marker)
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_white=1..}] at @s run function switch:modes/fish_fight/block_disappear/detect_color {color:"white"}
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_blue=1..}] at @s run function switch:modes/fish_fight/block_disappear/detect_color {color:"blue"}
execute as @a[tag=!detached,gamemode=!spectator,scores={switch.temp.placed_red=1..}] at @s run function switch:modes/fish_fight/block_disappear/detect_color {color:"red"}

# Remove blocks
execute as @e[tag=switch.fish_fight_block] run function switch:modes/fish_fight/block_disappear/marker_tick

