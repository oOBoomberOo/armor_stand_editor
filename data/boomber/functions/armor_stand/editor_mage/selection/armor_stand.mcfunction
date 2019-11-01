advancement grant @s only boomber:armor_stand/story/editor_wand
tag @s add boomber.armor_stand.target_editor

execute as @e[type=armor_stand, tag=!boomber.armor_stand.editing, tag=!global.ignore, tag=!global.ignore.pos, sort=nearest, limit=1, distance=..2.3] run tag @s add boomber.armor_stand.target_stand

execute as @e[type=armor_stand, tag=boomber.armor_stand.target_stand] run function boomber:armor_stand/smart_stand/get_part/run
execute if score #bb.ae.part bb.success matches 1.. run function boomber:armor_stand/editor_mage/selection/select

tag @e[type=armor_stand, tag=boomber.armor_stand.target_stand] remove boomber.armor_stand.target_stand
tag @s remove boomber.armor_stand.target_editor