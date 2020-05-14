tag @s add boomber.armor_stand.player
scoreboard players operation @s bb.ae.state = #player.alt_control bb.ae.enum

scoreboard players operation success bb.ae.result = #bool.false bb.ae.enum

scoreboard players operation #target_uid bb.ae.uid1 = @s bb.ae.uid1
scoreboard players operation #target_uid bb.ae.uid2 = @s bb.ae.uid2
scoreboard players operation #target_uid bb.ae.uid3 = @s bb.ae.uid3
scoreboard players operation #target_uid bb.ae.uid4 = @s bb.ae.uid4
execute as @e[tag=boomber.armor_stand.posing] if score @s bb.ae.uid1 = #target_uid bb.ae.uid1 if score @s bb.ae.uid2 = #target_uid bb.ae.uid2 if score @s bb.ae.uid3 = #target_uid bb.ae.uid3 if score @s bb.ae.uid4 = #target_uid bb.ae.uid4 run tag @s add boomber.armor_stand.target
execute as @e[tag=boomber.armor_stand.target] at @s run function boomber:armor_stand/pose/alternate_control

execute if score success bb.ae.result = #bool.false bb.ae.enum run function boomber:armor_stand/player/change_state/move_joint
execute if score success bb.ae.result = #bool.true bb.ae.enum run function boomber:armor_stand/player/state/move_joint/submit

tag @s remove boomber.armor_stand.player