
#> switch:maps/survival/operation_pigclaw/regeneration_on_marker
#
# @within	switch:maps/survival/operation_pigclaw/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_operation_pigclaw_y switch.data

execute if score #rg_operation_pigclaw_mod switch.data matches 0 at @s in switch:game run particle cloud 6003 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 0 at @s run clone from minecraft:overworld 6000 ~ 6000 6006 ~ 6512 to switch:game 6000 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 1 at @s in switch:game run particle cloud 6009 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 1 at @s run clone from minecraft:overworld 6006 ~ 6000 6012 ~ 6512 to switch:game 6006 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 2 at @s in switch:game run particle cloud 6015 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 2 at @s run clone from minecraft:overworld 6012 ~ 6000 6018 ~ 6512 to switch:game 6012 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 3 at @s in switch:game run particle cloud 6021 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 3 at @s run clone from minecraft:overworld 6018 ~ 6000 6024 ~ 6512 to switch:game 6018 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 4 at @s in switch:game run particle cloud 6027 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 4 at @s run clone from minecraft:overworld 6024 ~ 6000 6031 ~ 6512 to switch:game 6024 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 5 at @s in switch:game run particle cloud 6034 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 5 at @s run clone from minecraft:overworld 6031 ~ 6000 6037 ~ 6512 to switch:game 6031 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 6 at @s in switch:game run particle cloud 6040 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 6 at @s run clone from minecraft:overworld 6037 ~ 6000 6043 ~ 6512 to switch:game 6037 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 7 at @s in switch:game run particle cloud 6046 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 7 at @s run clone from minecraft:overworld 6043 ~ 6000 6049 ~ 6512 to switch:game 6043 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 8 at @s in switch:game run particle cloud 6052 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 8 at @s run clone from minecraft:overworld 6049 ~ 6000 6055 ~ 6512 to switch:game 6049 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 9 at @s in switch:game run particle cloud 6058 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 9 at @s run clone from minecraft:overworld 6055 ~ 6000 6061 ~ 6512 to switch:game 6055 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 10 at @s in switch:game run particle cloud 6064 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 10 at @s run clone from minecraft:overworld 6061 ~ 6000 6067 ~ 6512 to switch:game 6061 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 11 at @s in switch:game run particle cloud 6070 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 11 at @s run clone from minecraft:overworld 6067 ~ 6000 6073 ~ 6512 to switch:game 6067 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 12 at @s in switch:game run particle cloud 6076 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 12 at @s run clone from minecraft:overworld 6073 ~ 6000 6079 ~ 6512 to switch:game 6073 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 13 at @s in switch:game run particle cloud 6082 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 13 at @s run clone from minecraft:overworld 6079 ~ 6000 6086 ~ 6512 to switch:game 6079 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 14 at @s in switch:game run particle cloud 6089 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 14 at @s run clone from minecraft:overworld 6086 ~ 6000 6092 ~ 6512 to switch:game 6086 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 15 at @s in switch:game run particle cloud 6095 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 15 at @s run clone from minecraft:overworld 6092 ~ 6000 6098 ~ 6512 to switch:game 6092 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 16 at @s in switch:game run particle cloud 6101 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 16 at @s run clone from minecraft:overworld 6098 ~ 6000 6104 ~ 6512 to switch:game 6098 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 17 at @s in switch:game run particle cloud 6107 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 17 at @s run clone from minecraft:overworld 6104 ~ 6000 6110 ~ 6512 to switch:game 6104 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 18 at @s in switch:game run particle cloud 6113 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 18 at @s run clone from minecraft:overworld 6110 ~ 6000 6116 ~ 6512 to switch:game 6110 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 19 at @s in switch:game run particle cloud 6119 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 19 at @s run clone from minecraft:overworld 6116 ~ 6000 6122 ~ 6512 to switch:game 6116 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 20 at @s in switch:game run particle cloud 6125 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 20 at @s run clone from minecraft:overworld 6122 ~ 6000 6128 ~ 6512 to switch:game 6122 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 21 at @s in switch:game run particle cloud 6131 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 21 at @s run clone from minecraft:overworld 6128 ~ 6000 6134 ~ 6512 to switch:game 6128 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 22 at @s in switch:game run particle cloud 6137 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 22 at @s run clone from minecraft:overworld 6134 ~ 6000 6140 ~ 6512 to switch:game 6134 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 23 at @s in switch:game run particle cloud 6143 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 23 at @s run clone from minecraft:overworld 6140 ~ 6000 6147 ~ 6512 to switch:game 6140 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 24 at @s in switch:game run particle cloud 6150 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 24 at @s run clone from minecraft:overworld 6147 ~ 6000 6153 ~ 6512 to switch:game 6147 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 25 at @s in switch:game run particle cloud 6156 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 25 at @s run clone from minecraft:overworld 6153 ~ 6000 6159 ~ 6512 to switch:game 6153 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 26 at @s in switch:game run particle cloud 6162 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 26 at @s run clone from minecraft:overworld 6159 ~ 6000 6165 ~ 6512 to switch:game 6159 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 27 at @s in switch:game run particle cloud 6168 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 27 at @s run clone from minecraft:overworld 6165 ~ 6000 6171 ~ 6512 to switch:game 6165 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 28 at @s in switch:game run particle cloud 6174 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 28 at @s run clone from minecraft:overworld 6171 ~ 6000 6177 ~ 6512 to switch:game 6171 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 29 at @s in switch:game run particle cloud 6180 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 29 at @s run clone from minecraft:overworld 6177 ~ 6000 6183 ~ 6512 to switch:game 6177 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 30 at @s in switch:game run particle cloud 6186 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 30 at @s run clone from minecraft:overworld 6183 ~ 6000 6189 ~ 6512 to switch:game 6183 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 31 at @s in switch:game run particle cloud 6192 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 31 at @s run clone from minecraft:overworld 6189 ~ 6000 6195 ~ 6512 to switch:game 6189 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 32 at @s in switch:game run particle cloud 6198 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 32 at @s run clone from minecraft:overworld 6195 ~ 6000 6202 ~ 6512 to switch:game 6195 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 33 at @s in switch:game run particle cloud 6205 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 33 at @s run clone from minecraft:overworld 6202 ~ 6000 6208 ~ 6512 to switch:game 6202 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 34 at @s in switch:game run particle cloud 6211 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 34 at @s run clone from minecraft:overworld 6208 ~ 6000 6214 ~ 6512 to switch:game 6208 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 35 at @s in switch:game run particle cloud 6217 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 35 at @s run clone from minecraft:overworld 6214 ~ 6000 6220 ~ 6512 to switch:game 6214 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 36 at @s in switch:game run particle cloud 6223 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 36 at @s run clone from minecraft:overworld 6220 ~ 6000 6226 ~ 6512 to switch:game 6220 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 37 at @s in switch:game run particle cloud 6229 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 37 at @s run clone from minecraft:overworld 6226 ~ 6000 6232 ~ 6512 to switch:game 6226 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 38 at @s in switch:game run particle cloud 6235 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 38 at @s run clone from minecraft:overworld 6232 ~ 6000 6238 ~ 6512 to switch:game 6232 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 39 at @s in switch:game run particle cloud 6241 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 39 at @s run clone from minecraft:overworld 6238 ~ 6000 6244 ~ 6512 to switch:game 6238 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 40 at @s in switch:game run particle cloud 6247 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 40 at @s run clone from minecraft:overworld 6244 ~ 6000 6250 ~ 6512 to switch:game 6244 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 41 at @s in switch:game run particle cloud 6253 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 41 at @s run clone from minecraft:overworld 6250 ~ 6000 6256 ~ 6512 to switch:game 6250 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 42 at @s in switch:game run particle cloud 6259 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 42 at @s run clone from minecraft:overworld 6256 ~ 6000 6263 ~ 6512 to switch:game 6256 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 43 at @s in switch:game run particle cloud 6266 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 43 at @s run clone from minecraft:overworld 6263 ~ 6000 6269 ~ 6512 to switch:game 6263 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 44 at @s in switch:game run particle cloud 6272 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 44 at @s run clone from minecraft:overworld 6269 ~ 6000 6275 ~ 6512 to switch:game 6269 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 45 at @s in switch:game run particle cloud 6278 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 45 at @s run clone from minecraft:overworld 6275 ~ 6000 6281 ~ 6512 to switch:game 6275 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 46 at @s in switch:game run particle cloud 6284 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 46 at @s run clone from minecraft:overworld 6281 ~ 6000 6287 ~ 6512 to switch:game 6281 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 47 at @s in switch:game run particle cloud 6290 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 47 at @s run clone from minecraft:overworld 6287 ~ 6000 6293 ~ 6512 to switch:game 6287 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 48 at @s in switch:game run particle cloud 6296 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 48 at @s run clone from minecraft:overworld 6293 ~ 6000 6299 ~ 6512 to switch:game 6293 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 49 at @s in switch:game run particle cloud 6302 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 49 at @s run clone from minecraft:overworld 6299 ~ 6000 6305 ~ 6512 to switch:game 6299 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 50 at @s in switch:game run particle cloud 6308 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 50 at @s run clone from minecraft:overworld 6305 ~ 6000 6311 ~ 6512 to switch:game 6305 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 51 at @s in switch:game run particle cloud 6314 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 51 at @s run clone from minecraft:overworld 6311 ~ 6000 6318 ~ 6512 to switch:game 6311 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 52 at @s in switch:game run particle cloud 6321 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 52 at @s run clone from minecraft:overworld 6318 ~ 6000 6324 ~ 6512 to switch:game 6318 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 53 at @s in switch:game run particle cloud 6327 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 53 at @s run clone from minecraft:overworld 6324 ~ 6000 6330 ~ 6512 to switch:game 6324 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 54 at @s in switch:game run particle cloud 6333 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 54 at @s run clone from minecraft:overworld 6330 ~ 6000 6336 ~ 6512 to switch:game 6330 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 55 at @s in switch:game run particle cloud 6339 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 55 at @s run clone from minecraft:overworld 6336 ~ 6000 6342 ~ 6512 to switch:game 6336 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 56 at @s in switch:game run particle cloud 6345 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 56 at @s run clone from minecraft:overworld 6342 ~ 6000 6348 ~ 6512 to switch:game 6342 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 57 at @s in switch:game run particle cloud 6351 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 57 at @s run clone from minecraft:overworld 6348 ~ 6000 6354 ~ 6512 to switch:game 6348 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 58 at @s in switch:game run particle cloud 6357 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 58 at @s run clone from minecraft:overworld 6354 ~ 6000 6360 ~ 6512 to switch:game 6354 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 59 at @s in switch:game run particle cloud 6363 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 59 at @s run clone from minecraft:overworld 6360 ~ 6000 6366 ~ 6512 to switch:game 6360 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 60 at @s in switch:game run particle cloud 6369 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 60 at @s run clone from minecraft:overworld 6366 ~ 6000 6373 ~ 6512 to switch:game 6366 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 61 at @s in switch:game run particle cloud 6376 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 61 at @s run clone from minecraft:overworld 6373 ~ 6000 6379 ~ 6512 to switch:game 6373 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 62 at @s in switch:game run particle cloud 6382 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 62 at @s run clone from minecraft:overworld 6379 ~ 6000 6385 ~ 6512 to switch:game 6379 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 63 at @s in switch:game run particle cloud 6388 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 63 at @s run clone from minecraft:overworld 6385 ~ 6000 6391 ~ 6512 to switch:game 6385 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 64 at @s in switch:game run particle cloud 6394 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 64 at @s run clone from minecraft:overworld 6391 ~ 6000 6397 ~ 6512 to switch:game 6391 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 65 at @s in switch:game run particle cloud 6400 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 65 at @s run clone from minecraft:overworld 6397 ~ 6000 6403 ~ 6512 to switch:game 6397 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 66 at @s in switch:game run particle cloud 6406 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 66 at @s run clone from minecraft:overworld 6403 ~ 6000 6409 ~ 6512 to switch:game 6403 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 67 at @s in switch:game run particle cloud 6412 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 67 at @s run clone from minecraft:overworld 6409 ~ 6000 6415 ~ 6512 to switch:game 6409 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 68 at @s in switch:game run particle cloud 6418 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 68 at @s run clone from minecraft:overworld 6415 ~ 6000 6421 ~ 6512 to switch:game 6415 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 69 at @s in switch:game run particle cloud 6424 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 69 at @s run clone from minecraft:overworld 6421 ~ 6000 6428 ~ 6512 to switch:game 6421 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 70 at @s in switch:game run particle cloud 6431 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 70 at @s run clone from minecraft:overworld 6428 ~ 6000 6434 ~ 6512 to switch:game 6428 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 71 at @s in switch:game run particle cloud 6437 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 71 at @s run clone from minecraft:overworld 6434 ~ 6000 6440 ~ 6512 to switch:game 6434 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 72 at @s in switch:game run particle cloud 6443 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 72 at @s run clone from minecraft:overworld 6440 ~ 6000 6446 ~ 6512 to switch:game 6440 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 73 at @s in switch:game run particle cloud 6449 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 73 at @s run clone from minecraft:overworld 6446 ~ 6000 6452 ~ 6512 to switch:game 6446 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 74 at @s in switch:game run particle cloud 6455 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 74 at @s run clone from minecraft:overworld 6452 ~ 6000 6458 ~ 6512 to switch:game 6452 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 75 at @s in switch:game run particle cloud 6461 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 75 at @s run clone from minecraft:overworld 6458 ~ 6000 6464 ~ 6512 to switch:game 6458 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 76 at @s in switch:game run particle cloud 6467 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 76 at @s run clone from minecraft:overworld 6464 ~ 6000 6470 ~ 6512 to switch:game 6464 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 77 at @s in switch:game run particle cloud 6473 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 77 at @s run clone from minecraft:overworld 6470 ~ 6000 6476 ~ 6512 to switch:game 6470 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 78 at @s in switch:game run particle cloud 6479 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 78 at @s run clone from minecraft:overworld 6476 ~ 6000 6482 ~ 6512 to switch:game 6476 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 79 at @s in switch:game run particle cloud 6485 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 79 at @s run clone from minecraft:overworld 6482 ~ 6000 6489 ~ 6512 to switch:game 6482 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 80 at @s in switch:game run particle cloud 6492 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 80 at @s run clone from minecraft:overworld 6489 ~ 6000 6495 ~ 6512 to switch:game 6489 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 81 at @s in switch:game run particle cloud 6498 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 81 at @s run clone from minecraft:overworld 6495 ~ 6000 6501 ~ 6512 to switch:game 6495 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 82 at @s in switch:game run particle cloud 6504 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 82 at @s run clone from minecraft:overworld 6501 ~ 6000 6507 ~ 6512 to switch:game 6501 ~164 6000 strict replace force

execute if score #rg_operation_pigclaw_mod switch.data matches 83 at @s in switch:game run particle cloud 6510 ~164.5 6256 3 0 128 0 250 force
execute if score #rg_operation_pigclaw_mod switch.data matches 83 at @s run clone from minecraft:overworld 6507 ~ 6000 6513 ~ 6512 to switch:game 6507 ~164 6000 strict replace force

scoreboard players add #rg_operation_pigclaw_mod switch.data 1
execute if score #rg_operation_pigclaw_mod switch.data matches 84 in switch:game run kill @e[type=item,x=6256,y=-64,z=6256,distance=..1000]
execute if score #rg_operation_pigclaw_mod switch.data matches 84 run scoreboard players add #rg_operation_pigclaw_y switch.data 1
execute if score #rg_operation_pigclaw_mod switch.data matches 84 run scoreboard players set #rg_operation_pigclaw_mod switch.data 0

kill @s

