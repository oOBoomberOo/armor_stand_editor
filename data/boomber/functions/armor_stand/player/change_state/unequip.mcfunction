scoreboard players operation @s bb.ae.state = #player.unequip bb.ae.enum

function boomber:armor_stand/player/method/get_uuid
scoreboard players set @s bb.ae.leave 0

execute as @e[tag=boomber.armor_stand.detector] at @s if score @s bb.ae.uid1 = #target_uid bb.ae.uid1 if score @s bb.ae.uid2 = #target_uid bb.ae.uid2 if score @s bb.ae.uid3 = #target_uid bb.ae.uid3 if score @s bb.ae.uid4 = #target_uid bb.ae.uid4 run function boomber:armor_stand/detector/remove

function boomber:armor_stand/player/change_state/idle