
#> switch:maps/survival/flower_village/regeneration_on_marker
#
# @within	switch:maps/survival/flower_village/regenerate
#

execute store result entity @s Pos[1] double 1 run scoreboard players get #rg_flower_village_y switch.data

execute if score #rg_flower_village_mod switch.data matches 0 at @s in switch:game run particle cloud 89003 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 0 at @s run clone from minecraft:overworld 89000 ~ 89000 89006 ~ 89532 to switch:game 89000 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 1 at @s in switch:game run particle cloud 89009 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 1 at @s run clone from minecraft:overworld 89006 ~ 89000 89012 ~ 89532 to switch:game 89006 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 2 at @s in switch:game run particle cloud 89015 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 2 at @s run clone from minecraft:overworld 89012 ~ 89000 89018 ~ 89532 to switch:game 89012 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 3 at @s in switch:game run particle cloud 89020 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 3 at @s run clone from minecraft:overworld 89018 ~ 89000 89023 ~ 89532 to switch:game 89018 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 4 at @s in switch:game run particle cloud 89026 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 4 at @s run clone from minecraft:overworld 89023 ~ 89000 89029 ~ 89532 to switch:game 89023 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 5 at @s in switch:game run particle cloud 89032 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 5 at @s run clone from minecraft:overworld 89029 ~ 89000 89035 ~ 89532 to switch:game 89029 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 6 at @s in switch:game run particle cloud 89038 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 6 at @s run clone from minecraft:overworld 89035 ~ 89000 89041 ~ 89532 to switch:game 89035 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 7 at @s in switch:game run particle cloud 89044 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 7 at @s run clone from minecraft:overworld 89041 ~ 89000 89047 ~ 89532 to switch:game 89041 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 8 at @s in switch:game run particle cloud 89050 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 8 at @s run clone from minecraft:overworld 89047 ~ 89000 89053 ~ 89532 to switch:game 89047 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 9 at @s in switch:game run particle cloud 89056 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 9 at @s run clone from minecraft:overworld 89053 ~ 89000 89059 ~ 89532 to switch:game 89053 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 10 at @s in switch:game run particle cloud 89061 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 10 at @s run clone from minecraft:overworld 89059 ~ 89000 89064 ~ 89532 to switch:game 89059 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 11 at @s in switch:game run particle cloud 89067 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 11 at @s run clone from minecraft:overworld 89064 ~ 89000 89070 ~ 89532 to switch:game 89064 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 12 at @s in switch:game run particle cloud 89073 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 12 at @s run clone from minecraft:overworld 89070 ~ 89000 89076 ~ 89532 to switch:game 89070 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 13 at @s in switch:game run particle cloud 89079 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 13 at @s run clone from minecraft:overworld 89076 ~ 89000 89082 ~ 89532 to switch:game 89076 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 14 at @s in switch:game run particle cloud 89085 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 14 at @s run clone from minecraft:overworld 89082 ~ 89000 89088 ~ 89532 to switch:game 89082 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 15 at @s in switch:game run particle cloud 89091 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 15 at @s run clone from minecraft:overworld 89088 ~ 89000 89094 ~ 89532 to switch:game 89088 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 16 at @s in switch:game run particle cloud 89097 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 16 at @s run clone from minecraft:overworld 89094 ~ 89000 89100 ~ 89532 to switch:game 89094 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 17 at @s in switch:game run particle cloud 89103 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 17 at @s run clone from minecraft:overworld 89100 ~ 89000 89106 ~ 89532 to switch:game 89100 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 18 at @s in switch:game run particle cloud 89108 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 18 at @s run clone from minecraft:overworld 89106 ~ 89000 89111 ~ 89532 to switch:game 89106 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 19 at @s in switch:game run particle cloud 89114 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 19 at @s run clone from minecraft:overworld 89111 ~ 89000 89117 ~ 89532 to switch:game 89111 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 20 at @s in switch:game run particle cloud 89120 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 20 at @s run clone from minecraft:overworld 89117 ~ 89000 89123 ~ 89532 to switch:game 89117 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 21 at @s in switch:game run particle cloud 89126 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 21 at @s run clone from minecraft:overworld 89123 ~ 89000 89129 ~ 89532 to switch:game 89123 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 22 at @s in switch:game run particle cloud 89132 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 22 at @s run clone from minecraft:overworld 89129 ~ 89000 89135 ~ 89532 to switch:game 89129 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 23 at @s in switch:game run particle cloud 89138 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 23 at @s run clone from minecraft:overworld 89135 ~ 89000 89141 ~ 89532 to switch:game 89135 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 24 at @s in switch:game run particle cloud 89144 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 24 at @s run clone from minecraft:overworld 89141 ~ 89000 89147 ~ 89532 to switch:game 89141 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 25 at @s in switch:game run particle cloud 89149 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 25 at @s run clone from minecraft:overworld 89147 ~ 89000 89152 ~ 89532 to switch:game 89147 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 26 at @s in switch:game run particle cloud 89155 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 26 at @s run clone from minecraft:overworld 89152 ~ 89000 89158 ~ 89532 to switch:game 89152 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 27 at @s in switch:game run particle cloud 89161 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 27 at @s run clone from minecraft:overworld 89158 ~ 89000 89164 ~ 89532 to switch:game 89158 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 28 at @s in switch:game run particle cloud 89167 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 28 at @s run clone from minecraft:overworld 89164 ~ 89000 89170 ~ 89532 to switch:game 89164 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 29 at @s in switch:game run particle cloud 89173 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 29 at @s run clone from minecraft:overworld 89170 ~ 89000 89176 ~ 89532 to switch:game 89170 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 30 at @s in switch:game run particle cloud 89179 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 30 at @s run clone from minecraft:overworld 89176 ~ 89000 89182 ~ 89532 to switch:game 89176 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 31 at @s in switch:game run particle cloud 89185 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 31 at @s run clone from minecraft:overworld 89182 ~ 89000 89188 ~ 89532 to switch:game 89182 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 32 at @s in switch:game run particle cloud 89190 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 32 at @s run clone from minecraft:overworld 89188 ~ 89000 89193 ~ 89532 to switch:game 89188 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 33 at @s in switch:game run particle cloud 89196 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 33 at @s run clone from minecraft:overworld 89193 ~ 89000 89199 ~ 89532 to switch:game 89193 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 34 at @s in switch:game run particle cloud 89202 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 34 at @s run clone from minecraft:overworld 89199 ~ 89000 89205 ~ 89532 to switch:game 89199 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 35 at @s in switch:game run particle cloud 89208 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 35 at @s run clone from minecraft:overworld 89205 ~ 89000 89211 ~ 89532 to switch:game 89205 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 36 at @s in switch:game run particle cloud 89214 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 36 at @s run clone from minecraft:overworld 89211 ~ 89000 89217 ~ 89532 to switch:game 89211 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 37 at @s in switch:game run particle cloud 89220 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 37 at @s run clone from minecraft:overworld 89217 ~ 89000 89223 ~ 89532 to switch:game 89217 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 38 at @s in switch:game run particle cloud 89226 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 38 at @s run clone from minecraft:overworld 89223 ~ 89000 89229 ~ 89532 to switch:game 89223 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 39 at @s in switch:game run particle cloud 89231 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 39 at @s run clone from minecraft:overworld 89229 ~ 89000 89234 ~ 89532 to switch:game 89229 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 40 at @s in switch:game run particle cloud 89237 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 40 at @s run clone from minecraft:overworld 89234 ~ 89000 89240 ~ 89532 to switch:game 89234 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 41 at @s in switch:game run particle cloud 89243 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 41 at @s run clone from minecraft:overworld 89240 ~ 89000 89246 ~ 89532 to switch:game 89240 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 42 at @s in switch:game run particle cloud 89249 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 42 at @s run clone from minecraft:overworld 89246 ~ 89000 89252 ~ 89532 to switch:game 89246 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 43 at @s in switch:game run particle cloud 89255 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 43 at @s run clone from minecraft:overworld 89252 ~ 89000 89258 ~ 89532 to switch:game 89252 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 44 at @s in switch:game run particle cloud 89261 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 44 at @s run clone from minecraft:overworld 89258 ~ 89000 89264 ~ 89532 to switch:game 89258 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 45 at @s in switch:game run particle cloud 89267 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 45 at @s run clone from minecraft:overworld 89264 ~ 89000 89270 ~ 89532 to switch:game 89264 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 46 at @s in switch:game run particle cloud 89272 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 46 at @s run clone from minecraft:overworld 89270 ~ 89000 89275 ~ 89532 to switch:game 89270 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 47 at @s in switch:game run particle cloud 89278 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 47 at @s run clone from minecraft:overworld 89275 ~ 89000 89281 ~ 89532 to switch:game 89275 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 48 at @s in switch:game run particle cloud 89284 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 48 at @s run clone from minecraft:overworld 89281 ~ 89000 89287 ~ 89532 to switch:game 89281 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 49 at @s in switch:game run particle cloud 89290 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 49 at @s run clone from minecraft:overworld 89287 ~ 89000 89293 ~ 89532 to switch:game 89287 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 50 at @s in switch:game run particle cloud 89296 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 50 at @s run clone from minecraft:overworld 89293 ~ 89000 89299 ~ 89532 to switch:game 89293 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 51 at @s in switch:game run particle cloud 89302 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 51 at @s run clone from minecraft:overworld 89299 ~ 89000 89305 ~ 89532 to switch:game 89299 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 52 at @s in switch:game run particle cloud 89308 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 52 at @s run clone from minecraft:overworld 89305 ~ 89000 89311 ~ 89532 to switch:game 89305 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 53 at @s in switch:game run particle cloud 89313 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 53 at @s run clone from minecraft:overworld 89311 ~ 89000 89316 ~ 89532 to switch:game 89311 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 54 at @s in switch:game run particle cloud 89319 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 54 at @s run clone from minecraft:overworld 89316 ~ 89000 89322 ~ 89532 to switch:game 89316 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 55 at @s in switch:game run particle cloud 89325 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 55 at @s run clone from minecraft:overworld 89322 ~ 89000 89328 ~ 89532 to switch:game 89322 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 56 at @s in switch:game run particle cloud 89331 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 56 at @s run clone from minecraft:overworld 89328 ~ 89000 89334 ~ 89532 to switch:game 89328 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 57 at @s in switch:game run particle cloud 89337 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 57 at @s run clone from minecraft:overworld 89334 ~ 89000 89340 ~ 89532 to switch:game 89334 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 58 at @s in switch:game run particle cloud 89343 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 58 at @s run clone from minecraft:overworld 89340 ~ 89000 89346 ~ 89532 to switch:game 89340 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 59 at @s in switch:game run particle cloud 89349 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 59 at @s run clone from minecraft:overworld 89346 ~ 89000 89352 ~ 89532 to switch:game 89346 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 60 at @s in switch:game run particle cloud 89355 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 60 at @s run clone from minecraft:overworld 89352 ~ 89000 89358 ~ 89532 to switch:game 89352 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 61 at @s in switch:game run particle cloud 89360 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 61 at @s run clone from minecraft:overworld 89358 ~ 89000 89363 ~ 89532 to switch:game 89358 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 62 at @s in switch:game run particle cloud 89366 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 62 at @s run clone from minecraft:overworld 89363 ~ 89000 89369 ~ 89532 to switch:game 89363 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 63 at @s in switch:game run particle cloud 89372 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 63 at @s run clone from minecraft:overworld 89369 ~ 89000 89375 ~ 89532 to switch:game 89369 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 64 at @s in switch:game run particle cloud 89378 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 64 at @s run clone from minecraft:overworld 89375 ~ 89000 89381 ~ 89532 to switch:game 89375 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 65 at @s in switch:game run particle cloud 89384 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 65 at @s run clone from minecraft:overworld 89381 ~ 89000 89387 ~ 89532 to switch:game 89381 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 66 at @s in switch:game run particle cloud 89390 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 66 at @s run clone from minecraft:overworld 89387 ~ 89000 89393 ~ 89532 to switch:game 89387 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 67 at @s in switch:game run particle cloud 89396 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 67 at @s run clone from minecraft:overworld 89393 ~ 89000 89399 ~ 89532 to switch:game 89393 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 68 at @s in switch:game run particle cloud 89401 ~100.5 89266 2 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 68 at @s run clone from minecraft:overworld 89399 ~ 89000 89404 ~ 89532 to switch:game 89399 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 69 at @s in switch:game run particle cloud 89407 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 69 at @s run clone from minecraft:overworld 89404 ~ 89000 89410 ~ 89532 to switch:game 89404 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 70 at @s in switch:game run particle cloud 89413 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 70 at @s run clone from minecraft:overworld 89410 ~ 89000 89416 ~ 89532 to switch:game 89410 ~100 89000 replace force

execute if score #rg_flower_village_mod switch.data matches 71 at @s in switch:game run particle cloud 89419 ~100.5 89266 3 0 133 0 250 force
execute if score #rg_flower_village_mod switch.data matches 71 at @s run clone from minecraft:overworld 89416 ~ 89000 89422 ~ 89532 to switch:game 89416 ~100 89000 replace force

scoreboard players add #rg_flower_village_mod switch.data 1
execute if score #rg_flower_village_mod switch.data matches 72 in switch:game run kill @e[type=item,x=89211,y=0,z=89266,distance=..1000]
execute if score #rg_flower_village_mod switch.data matches 72 run scoreboard players add #rg_flower_village_y switch.data 1
execute if score #rg_flower_village_mod switch.data matches 72 run scoreboard players set #rg_flower_village_mod switch.data 0

kill @s

