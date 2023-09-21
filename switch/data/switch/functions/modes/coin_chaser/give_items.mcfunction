
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot e.anchor:item/monemtum_hookshot

clear @s

loot give @s loot e.anchor:item/monemtum_hookshot
item replace entity @s armor.chest with elytra{Unbreakable:1b}
item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s weapon.offhand from block 0 0 0 container.0

item replace entity @s hotbar.8 with warped_fungus_on_a_stick{CustomModelData:2013170,display:{Name:'{"text":"Débloqueur","color":"aqua","italic":false}'},Unbreakable:1b}

setblock 0 0 0 air

