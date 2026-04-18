
#> switch:calls/simpledrawer/solarium/main
#
# @within	switch:calls/simpledrawer/solarium/block
#			switch:calls/simpledrawer/solarium/ingot
#

# Set score of material found to 1
scoreboard players set #success_material simpledrawer.io 1

# Set the convert counts
scoreboard players set #ingot_in_block simpledrawer.io 9
scoreboard players set #nugget_in_ingot simpledrawer.io 9

# Set the material data
data modify storage simpledrawer:io material set value {material: "switch.solarium", material_name:"Solarium"}

# Fill the NBT with your own items
data modify storage simpledrawer:io material.block.item set from storage switch:items all.solarium_block
data modify storage simpledrawer:io material.ingot.item set from storage switch:items all.solarium_ingot

