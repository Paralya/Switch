
# input storage $(my_id), & switch:temp pitchout[{id:$(my_id)}].killed_by[{id:X}, {id:Y}, ...]

$execute store result score #count switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by
execute unless score #count switch.data matches 3 run return 1

$execute store result score #id_1 switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by[0].id
$execute store result score #id_2 switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by[1].id
$execute store result score #id_3 switch.data run data get storage switch:temp pitchout[{id:$(my_id)}].killed_by[2].id

# If every lives taken are the same, grant the "Harcelé" advancement.
execute unless score #test_mode switch.data matches 1 if score #id_1 switch.data = #id_2 switch.data if score #id_1 switch.data = #id_3 switch.data run advancement grant @s only switch:visible/40

# Grant "Harceleur" advancement
execute unless score #test_mode switch.data matches 1 if score #id_1 switch.data = #id_2 switch.data if score #id_1 switch.data = #id_3 switch.data as @a[tag=!detached] if score @s switch.id = #id_1 switch.data run advancement grant @s only switch:visible/58

