
clone 1409 60 1424 1591 60 1577 1409 174 1424 replace force
clone 1409 61 1424 1591 61 1577 1409 175 1424 replace force
clone 1409 62 1424 1591 62 1577 1409 176 1424 replace force
clone 1409 63 1424 1591 63 1577 1409 177 1424 replace force
clone 1409 64 1424 1591 64 1577 1409 178 1424 replace force

tellraw @a [{"text":"Génération : 100% !","color":"gray"}]
scoreboard players set #map_generated switch.data 1
forceload remove 1409 1424 1591 1577

