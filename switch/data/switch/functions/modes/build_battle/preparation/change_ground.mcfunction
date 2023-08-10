
# Clone the block below to avoid this function to run again
clone ~3 ~2 ~3 ~3 ~2 ~3 ~3 ~-2 ~3 replace force
setblock ~3 ~-3 ~3 barrier

# Clone to the whole area
clone ~3 ~2 ~3 ~3 ~2 ~3 ~5 ~1 ~5 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~1 ~ ~ ~2 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~3 ~ ~ ~4 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~7 ~ ~ ~8 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~15 ~ ~ ~16 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~6 ~ ~ ~32 ~ ~ replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~47 ~ ~ ~ ~ ~1 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~47 ~ ~1 ~ ~ ~2 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~47 ~ ~3 ~ ~ ~4 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~47 ~ ~7 ~ ~ ~8 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~47 ~ ~15 ~ ~ ~16 replace force
execute positioned ~5 ~1 ~5 run clone ~ ~ ~ ~47 ~ ~6 ~ ~ ~32 replace force

