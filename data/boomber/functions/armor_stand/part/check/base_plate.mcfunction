execute at @s run function boomber:armor_stand/part/part
execute if entity @e[type=area_effect_cloud, tag=boomber.armor_stand.part, distance=..0.3] run scoreboard players set #bb.ae.part bb.success 7
function boomber:armor_stand/part/remove