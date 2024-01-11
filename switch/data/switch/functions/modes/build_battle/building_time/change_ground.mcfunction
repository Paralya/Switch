
# Clone the block below to avoid this function to run again
clone ~3 ~7 ~3 ~3 ~7 ~3 ~3 ~-2 ~3 replace force
setblock ~3 ~-3 ~3 barrier

# Clone to the whole area
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~6 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~5 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~4 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~3 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~2 ~5 replace force
clone ~3 ~7 ~3 ~3 ~7 ~3 ~5 ~1 ~5 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~ ~ ~ ~1 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~1 ~ ~ ~2 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~3 ~ ~ ~4 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~7 ~ ~ ~8 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~15 ~ ~ ~16 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~5 ~ ~ ~32 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~ ~ ~ ~1 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~1 ~ ~ ~2 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~3 ~ ~ ~4 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~7 ~ ~ ~8 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~15 ~ ~ ~16 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~5 ~ ~38 ~ ~6 ~ ~ ~31 replace force

