


scoreboard players operation #rtb_search switch.data = @s switch.rtb.id
tag @s add switch.rtb.temp
execute as @a[tag=!switch.detached,scores={switch.alive=1..},gamemode=survival] if score @s switch.rtb.id = #rtb_search switch.data run function switch:modes/replicate_the_build/utils/finish_building_player
tag @s remove switch.rtb.temp


