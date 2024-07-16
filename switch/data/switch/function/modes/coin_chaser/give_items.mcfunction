
setblock 0 0 0 air
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot e.anchor:item/monemtum_hookshot

clear @s

loot give @s loot e.anchor:item/monemtum_hookshot
item replace entity @s armor.chest with elytra[unbreakable={}]
item replace entity @s hotbar.0 from block 0 0 0 container.0
item replace entity @s weapon.offhand from block 0 0 0 container.0

item replace entity @s hotbar.8 with warped_fungus_on_a_stick[unbreakable={},custom_name='{"text":"Débloqueur","color":"aqua","italic":false}',custom_model_data=2013170]

setblock 0 0 0 air

