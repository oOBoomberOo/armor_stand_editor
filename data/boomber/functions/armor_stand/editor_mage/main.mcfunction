scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[type=villager, tag=boomber.armor_stand.editor_node] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run tag @s add boomber.armor_stand.target_node
execute anchored eyes positioned ^ ^ ^0.5 as @e[type=villager, tag=boomber.armor_stand.target_node] run function boomber:armor_stand/editor_node/move

execute if score #bb.ae.is_holding_wand bb.success matches 0 run function boomber:armor_stand/editor_mage/unequip

execute if score @s[tag=!boomber.armor_stand.editing] bb.ae.select matches 1.. run function boomber:armor_stand/editor_mage/selection/attempt_selection
execute if score @s[tag=boomber.armor_stand.editing] bb.ae.select matches 1.. run function boomber:armor_stand/editor_mage/selection/deselect

tag @e[type=villager, tag=boomber.armor_stand.target_node] remove boomber.armor_stand.target_node