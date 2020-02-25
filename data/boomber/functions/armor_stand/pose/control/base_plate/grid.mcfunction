execute at @e[tag=boomber.armor_stand.pointer] align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~ facing entity @p[tag=boomber.armor_stand.player]

execute store result score #bb.ae.rx bb.result run data get entity @s Rotation[0] 10000
function boomber:armor_stand/pose/control/calculation/step
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players get #bb.ae.rx bb.result
data modify entity @s Rotation[1] set value 0.0f

function boomber:armor_stand/teleporter/update_coord

scoreboard players reset #bb.ae.rx bb.result