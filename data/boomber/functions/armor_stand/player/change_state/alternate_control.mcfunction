scoreboard players operation @s bb.ae.state = #bb.ae.player_state.alternate_control bb.enum

scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.posing] at @s if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run function boomber:armor_stand/pose/alternate_switch

function boomber:armor_stand/player/change_state/move_joint