
scoreboard players set @s switch.trigger.succes 0

setblock 0 13 0 air
setblock 0 13 0 yellow_shulker_box
loot insert 0 13 0 loot switch:get_username
data modify storage switch:main input set value {player:"@s"}
data modify storage switch:main input.player set from block 0 13 0 Items[0].components."minecraft:profile".name
setblock 0 13 0 air

function switch:player/trigger/succes/main with storage switch:main input

