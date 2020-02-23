#define entity #bb.ae.control_state
scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.posing] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run tag @s add boomber.armor_stand.target

scoreboard players operation #bb.ae.control_state bb.variable = #bb.ae.player_state.idle bb.enum

execute if score #bb.ae.control_state bb.variable = #bb.ae.player_state.idle bb.enum if data entity @s SelectedItem.tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} run scoreboard players operation #bb.ae.control_state bb.variable = #bb.ae.player_state.free_control bb.enum
execute if score #bb.ae.control_state bb.variable = #bb.ae.player_state.idle bb.enum unless data entity @s SelectedItem.tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} if data entity @s Inventory[{Slot: -106b}].tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} run scoreboard players operation #bb.ae.control_state bb.variable = #bb.ae.player_state.axis_control bb.enum
execute if score #bb.ae.control_state bb.variable = #bb.ae.player_state.idle bb.enum run function boomber:armor_stand/player/change_state/right_control/cancel

execute anchored eyes positioned ^ ^ ^1.8 run function boomber:armor_stand/pointer/new
execute as @e[tag=boomber.armor_stand.target] at @s run function boomber:armor_stand/pose/main

execute if score @s bb.ae.right matches 1.. run function boomber:armor_stand/player/change_state/right_control/submit

function boomber:armor_stand/pointer/clear
tag @e[tag=boomber.armor_stand.target] remove boomber.armor_stand.target