#define tag boomber.armor_stand.player
tag @s add boomber.armor_stand.player
execute anchored eyes positioned ^ ^ ^1.8 run function boomber:armor_stand/pointer/new

function boomber:armor_stand/player/method/get_uuid
execute as @e[tag=boomber.armor_stand.posing] if score @s bb.ae.uid1 = #target_uid bb.ae.uid1 if score @s bb.ae.uid2 = #target_uid bb.ae.uid2 if score @s bb.ae.uid3 = #target_uid bb.ae.uid3 if score @s bb.ae.uid4 = #target_uid bb.ae.uid4 run tag @s add boomber.armor_stand.target

#define entity alt_control
scoreboard players operation alt_control bb.ae.var = #bool.false bb.ae.enum
execute if predicate boomber:armor_stand/is_sneaking run scoreboard players operation alt_control bb.ae.var = #bool.true bb.ae.enum

execute unless data entity @s SelectedItem.tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} unless data entity @s Inventory[{Slot: -106b}].tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} run function boomber:armor_stand/player/state/move_joint/cancel

execute as @e[tag=boomber.armor_stand.target] at @s run function boomber:armor_stand/pose/control
execute if score @s bb.ae.right matches 1.. run function boomber:armor_stand/player/state/move_joint/submit

# `unequip` when player re-join the game
execute if score @s bb.ae.leave matches 1.. run function boomber:armor_stand/player/change_state/unequip

function boomber:armor_stand/pointer/clear
tag @e[tag=boomber.armor_stand.target] remove boomber.armor_stand.target
tag @s remove boomber.armor_stand.player

scoreboard players reset #target_uid bb.ae.uid1
scoreboard players reset #target_uid bb.ae.uid2
scoreboard players reset #target_uid bb.ae.uid3
scoreboard players reset #target_uid bb.ae.uid4
scoreboard players reset alt_control bb.ae.var