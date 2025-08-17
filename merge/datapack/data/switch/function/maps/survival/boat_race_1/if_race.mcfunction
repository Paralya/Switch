
scoreboard players set #total_laps switch.data 1
scoreboard players set #total_checkpoints switch.data 8

summon marker 5201 160 5139 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:0, dx:3, dy:5, dz:8}}
summon marker 5095 151 5100 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:1, dx:3, dy:5, dz:8}}
summon marker 5122 118 5167 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:2, dx:3, dy:5, dz:8}}
summon marker 5214 112 5078 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:3, dx:3, dy:5, dz:8}}
summon marker 5115 139 5074 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:4, dx:3, dy:5, dz:8}}
summon marker 5111 127 5107 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:5, dx:3, dy:5, dz:8}}
summon marker 5195 127 5089 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:6, dx:3, dy:5, dz:8}}
summon marker 5246 126 5162 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:7, dx:3, dy:5, dz:8}}
summon marker 5231 155 5156 {Tags:["switch.checkpoint","switch.can_hard_reset"],data:{cp:8, dx:3, dy:5, dz:8}}

forceload add 5201 5139
forceload add 5095 5100
forceload add 5122 5167
forceload add 5214 5078
forceload add 5115 5074
forceload add 5111 5107
forceload add 5195 5089
forceload add 5246 5162
forceload add 5231 5156

