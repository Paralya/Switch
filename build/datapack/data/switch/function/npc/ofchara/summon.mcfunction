
#> switch:npc/ofchara/summon
#
# @executed	positioned -22 69.8 3
#
# @within	switch:npc/ofchara/tick
#

# Summon
summon interaction ~ ~2.5 ~ {Tags:["switch.npc","switch.npc.ofchara"],height:-2.5f,response:0b,Passengers:[{id:"minecraft:armor_stand",Tags:["switch.npc","switch.npc.ofchara","switch.npc.body_locked"],Rotation:[90.0f, 0.0f],Invulnerable:true,PersistenceRequired:true,NoBasePlate:true,NoGravity:true,ShowArms:true,DisabledSlots:4144959,Pose:{Head:[0f,0f,1f],LeftLeg:[314f,8f,0f],RightLeg:[311f,4f,0f],LeftArm:[269f,60f,0f],RightArm:[344f,27f,25f]},equipment:{feet:{id:"leather_boots",count:1,components:{dyed_color:3145472}},legs:{id:"leather_leggings",count:1,components:{dyed_color:3145472}},chest:{id:"leather_chestplate",count:1,components:{dyed_color:3145472}},head:{id:"player_head",count:1,components:{profile:{name:"OfChara"}}},mainhand:{id:"amethyst_block",count:1}}}]}

# Register the interaction entity right click event
execute as @n[type=interaction,tag=switch.npc] run function #bs.interaction:on_right_click { run: "function switch:npc/ofchara/on_right_click", executor: "source" }

