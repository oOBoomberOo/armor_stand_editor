#define tag boomber.armor_stand.player
tag @s add boomber.armor_stand.player
execute anchored eyes positioned ^ ^ ^1.8 run function boomber:armor_stand/pointer/new

scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.posing] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run tag @s add boomber.armor_stand.target

#define entity #bb.ae.grid_control
scoreboard players operation #bb.ae.grid_control bb.variable = #bb.ae.bool.false bb.enum
execute if predicate boomber:armor_stand/is_sneaking run scoreboard players operation #bb.ae.grid_control bb.variable = #bb.ae.bool.true bb.enum

execute unless data entity @s SelectedItem.tag{ctc: {id: 'editor_wand', from: 'boomber:armor_stand'}} run function boomber:armor_stand/player/change_state/right_control/cancel

execute as @e[tag=boomber.armor_stand.target] at @s run function boomber:armor_stand/pose/control/free_control
execute if score @s bb.ae.right matches 1.. run function boomber:armor_stand/player/change_state/right_control/submit

function boomber:armor_stand/pointer/clear
tag @e[tag=boomber.armor_stand.target] remove boomber.armor_stand.target
tag @s remove boomber.armor_stand.player

scoreboard players reset #bb.ae.target_uid bb.ae.uid
scoreboard players reset #bb.ae.grid_control bb.variable
scoreboard players reset #bb.ae.control_state bb.variable