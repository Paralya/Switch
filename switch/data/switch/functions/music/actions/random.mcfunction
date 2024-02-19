
scoreboard players operation #modulo_rand switch.data = #last_index switch.music.current
scoreboard players remove #modulo_rand switch.data 99
function switch:utils/get_random/

scoreboard players add #random switch.data 100
scoreboard players operation @s switch.music.current = #random switch.data
scoreboard players set @s switch.music.progress 0

