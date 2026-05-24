
data modify storage switch:main temp set value {max:0}
scoreboard players operation #temp switch.data = #modulo_rand switch.data
scoreboard players remove #temp switch.data 1
execute if score #temp switch.data matches ..-1 run return fail
execute store result storage switch:main temp.max int 1 run scoreboard players get #temp switch.data
function switch:utils/get_random/macro with storage switch:main temp

