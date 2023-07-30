
# Summon marker with sheep color
execute store result score #color switch.data run data get entity @s Color
execute if score #success switch.data matches 0 unless entity @e[type=marker,tag=switch.moutron_marker,distance=..0.5] summon marker run function switch:modes/moutron/summoned_marker

