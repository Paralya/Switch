
scoreboard players operation #block switch.data = @s switch.temp.order
function switch:modes/_common/set_wool_color

scoreboard players set #success switch.data 0
execute unless block ~1 ~ ~ water unless block ~-1 ~ ~ water unless block ~ ~ ~1 water unless block ~ ~ ~-1 water unless block ~1 ~ ~ air unless block ~-1 ~ ~ air unless block ~ ~ ~1 air unless block ~ ~ ~-1 air run function switch:modes/mlg_a_coudre/mlg_a_coudre
function switch:translations/modes_mlg_a_coudre_done

schedule function switch:modes/mlg_a_coudre/remove_water 1s

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
gamemode spectator @s

