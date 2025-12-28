
#> switch:calls/simpledrawer/ruby/main
#
# @within	switch:calls/simpledrawer/ruby/block
#			switch:calls/simpledrawer/ruby/ingot
#

# Set score of material found to 1
scoreboard players set #success_material simpledrawer.io 1

# Set the convert counts
scoreboard players set #ingot_in_block simpledrawer.io 9
scoreboard players set #nugget_in_ingot simpledrawer.io 9

# Set the material data
data modify storage simpledrawer:io material set value {material: "switch.ruby", material_name:"Ruby"}

# Fill the NBT with your own items
data modify storage simpledrawer:io material.block.item set from storage switch:items all.ruby_block
data modify storage simpledrawer:io material.ingot.item set from storage switch:items all.ruby

