
scoreboard players add #protect_the_king_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #protect_the_king_seconds switch.data matches 0.. run function switch:modes/protect_the_king/xp_bar
execute if score #protect_the_king_seconds switch.data matches 0.. run effect give @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red,team=!switch.temp.blue] glowing infinite 255 true

function switch:translations/modes_protect_the_king_second

