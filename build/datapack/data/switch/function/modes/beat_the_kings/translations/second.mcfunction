
#> switch:modes/beat_the_kings/translations/second
#
# @within	switch:modes/beat_the_kings/second
#

# French
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=0},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuceFR","storage":"switch:main","interpret":true},{"text":" Utilisez votre arc pour drainer la vie des joueurs !"}]

# English
execute if score #beat_the_kings_seconds switch.data matches 30 run tellraw @a[scores={switch.lang=1},tag=!detached,team=switch.temp.king] ["",{"nbt":"ParalyaAstuceEN","storage":"switch:main","interpret":true},{"text":" Use your bow to drain players' health!"}]
function switch:translations/common/basic_actionbar

