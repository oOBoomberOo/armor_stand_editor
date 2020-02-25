execute at @e[tag=boomber.armor_stand.pointer] align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~ facing entity @p[tag=boomber.armor_stand.player]

execute store result score #bb.ae.rx bb.calc run data get entity @s Rotation[0] 1000
function boomber:armor_stand/pose/control/calculation/step
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #bb.ae.rx bb.calc

function boomber:armor_stand/teleporter/update_coord

scoreboard players reset #bb.ae.rx bb.calc
scoreboard players reset #bb.ae.ry bb.calc