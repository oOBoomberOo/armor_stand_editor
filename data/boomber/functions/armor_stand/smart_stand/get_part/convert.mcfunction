scoreboard players operation @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid

tag @s add boomber.armor_stand.editing
execute if score #bb.ae.part bb.success matches 1 run tag @s add boomber.armor_stand.edit.left_arm
execute if score #bb.ae.part bb.success matches 2 run tag @s add boomber.armor_stand.edit.right_arm
execute if score #bb.ae.part bb.success matches 3 run tag @s add boomber.armor_stand.edit.left_leg
execute if score #bb.ae.part bb.success matches 4 run tag @s add boomber.armor_stand.edit.right_leg
execute if score #bb.ae.part bb.success matches 5 run tag @s add boomber.armor_stand.edit.body
execute if score #bb.ae.part bb.success matches 6 run tag @s add boomber.armor_stand.edit.head
execute if score #bb.ae.part bb.success matches 7 run tag @s add boomber.armor_stand.edit.base_plate

execute if score #bb.ae.part bb.success matches 7 run advancement grant @p[tag=boomber.armor_stand.target_editor] only boomber:armor_stand/story/pick_up_armor_stand