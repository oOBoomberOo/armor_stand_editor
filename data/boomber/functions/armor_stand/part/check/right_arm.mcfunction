execute at @s anchored eyes positioned ^-0.4 ^-0.33 ^ run function boomber:armor_stand/part/part
execute if entity @e[type=area_effect_cloud, tag=boomber.armor_stand.part, distance=..0.2] run scoreboard players set #bb.ae.part bb.success 2
function boomber:armor_stand/part/remove