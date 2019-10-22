scoreboard players operation #bb.ae.sneaking bb.variable = @s bb.ae.alt

execute as @e[type=armor_stand, tag=!boomber.armor_stand.editing, tag=!global.ignore, sort=nearest, limit=1, distance=..2.3] run tag @s add boomber.armor_stand.target_stand

function boomber:armor_stand/unique_vector/location
scoreboard players operation #bb.ae.pos.x bb.variable = #bb.ae.result.x bb.variable
scoreboard players operation #bb.ae.pos.y bb.variable = #bb.ae.result.y bb.variable
scoreboard players operation #bb.ae.pos.z bb.variable = #bb.ae.result.z bb.variable

execute as @e[type=armor_stand, tag=boomber.armor_stand.target_stand] run function boomber:armor_stand/smart_stand/get_part
execute if score #bb.ae.part bb.success matches 1.. run function boomber:armor_stand/editor_mage/submit/toggle

tag @e[type=armor_stand, tag=boomber.armor_stand.target_stand] remove boomber.armor_stand.target_stand