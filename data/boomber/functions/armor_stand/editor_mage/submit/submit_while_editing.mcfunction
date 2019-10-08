tag @s add boomber.armor_stand.target_editor

scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[type=armor_stand, tag=boomber.armor_stand.editing] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run function boomber:armor_stand/smart_stand/reset_selection

tag @s remove boomber.armor_stand.target_editor