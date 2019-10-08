function boomber:armor_stand/unique_vector/create

execute as @e[type=area_effect_cloud, tag=boomber.armor_stand.unique_vector] store result score #bb.ae.result.x bb.variable run data get entity @s Pos[0] 1000
execute as @e[type=area_effect_cloud, tag=boomber.armor_stand.unique_vector] store result score #bb.ae.result.y bb.variable run data get entity @s Pos[1] 1000
execute as @e[type=area_effect_cloud, tag=boomber.armor_stand.unique_vector] store result score #bb.ae.result.z bb.variable run data get entity @s Pos[2] 1000

function boomber:armor_stand/unique_vector/remove