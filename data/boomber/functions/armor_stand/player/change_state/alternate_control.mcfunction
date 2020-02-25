tag @s add boomber.armor_stand.player
scoreboard players operation @s bb.ae.state = #bb.ae.player_state.alternate_control bb.enum

scoreboard players operation #bb.ae.success bb.result = #bb.ae.bool.false bb.enum

scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.posing] if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run tag @s add boomber.armor_stand.target
execute as @e[tag=boomber.armor_stand.target] at @s run function boomber:armor_stand/pose/alternate_control

execute if score #bb.ae.success bb.result = #bb.ae.bool.false bb.enum run function boomber:armor_stand/player/change_state/move_joint
execute if score #bb.ae.success bb.result = #bb.ae.bool.true bb.enum run function boomber:armor_stand/player/state/move_joint/submit

tag @s remove boomber.armor_stand.player