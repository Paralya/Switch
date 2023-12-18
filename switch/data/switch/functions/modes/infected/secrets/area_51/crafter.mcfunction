
execute positioned 2015 49 1990 run kill @e[tag=smithed.crafter,distance=..500]
setblock 2015 49 1990 furnace[facing=east]{Items:[{Count:1b,Slot:0b,id:"minecraft:stone",tag:{smithed:{block:{id:"smithed:crafter"}}}}]}
setblock 2015 149 1990 furnace[facing=east]{Items:[{Count:1b,Slot:0b,id:"minecraft:stone",tag:{smithed:{block:{id:"smithed:crafter"}}}}]}

schedule function switch:modes/infected/secrets/area_51_crafter_2 1t

