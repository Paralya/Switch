
#> switch:player/layout/swap/8
#
# @executed	as @a[tag=!detached,sort=random] & at @s
#
# @within	switch:player/layout/swap
#

execute if score #k switch.data matches 1 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.0"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.0"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 2 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.1"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.1"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 3 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.2"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.2"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 4 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.3"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.3"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 5 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.4"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.4"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 6 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.5"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.5"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 7 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.6"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.6"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 8 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"hotbar.7"}] from entity @s [{type:"minecraft:slot_range",slots:"hotbar.7"},{type:"minecraft:slot_range",slots:"hotbar.8"}]
execute if score #k switch.data matches 10 run return run item replace entity @s [{type:"minecraft:slot_range",slots:"hotbar.8"},{type:"minecraft:slot_range",slots:"weapon.offhand"}] from entity @s [{type:"minecraft:slot_range",slots:"weapon.offhand"},{type:"minecraft:slot_range",slots:"hotbar.8"}]

