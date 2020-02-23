scoreboard players operation @s bb.ae.state = #bb.ae.player_state.unequip bb.enum

scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
scoreboard players set @s bb.ae.leave 0

execute as @e[tag=boomber.armor_stand.detector] at @s if score @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid run function boomber:armor_stand/detector/remove

function boomber:armor_stand/player/change_state/idle