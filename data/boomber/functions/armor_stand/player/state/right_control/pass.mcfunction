scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.selector] at @s run function boomber:armor_stand/pose/tag

execute if data entity @s SelectedItem.tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} run function boomber:armor_stand/player/change_state/free_control
execute unless data entity @s SelectedItem.tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} if data entity @s Inventory[{Slot: -106b}].tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} run function boomber:armor_stand/player/change_state/axis_control

scoreboard players reset #bb.ae.target_uid bb.ae.uid