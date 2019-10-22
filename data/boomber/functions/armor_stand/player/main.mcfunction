scoreboard players set #bb.ae.is_holding_wand bb.success 0
execute if data entity @s SelectedItem.tag.ucit{id: "editor_wand", from: "boomber:armor_stand"} run scoreboard players set #bb.ae.is_holding_wand bb.success 1

execute if score #bb.ae.is_holding_wand bb.success matches 1 if entity @s[tag=!boomber.armor_stand.editor_mage] run function boomber:armor_stand/editor_mage/equip
execute if entity @s[tag=boomber.armor_stand.editor_mage] run function boomber:armor_stand/editor_mage/main

execute if score @s bb.ae.alt matches 1.. run scoreboard players set @s bb.ae.alt 0