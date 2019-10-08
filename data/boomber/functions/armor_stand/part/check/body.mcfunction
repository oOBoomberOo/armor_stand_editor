execute at @s anchored eyes positioned ^ ^-0.7 ^ run function boomber:armor_stand/part/part
execute if entity @e[type=area_effect_cloud, tag=boomber.armor_stand.part, distance=..0.2] run scoreboard players set #bb.ae.part bb.success 5
function boomber:armor_stand/part/remove