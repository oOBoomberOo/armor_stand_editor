function boomber:armor_stand/player/method/get_uuid
execute as @e[tag=boomber.armor_stand.selector] at @s run function boomber:armor_stand/pose/tag
function boomber:armor_stand/player/change_state/move_joint

scoreboard players reset #target_uid bb.ae.uid1
scoreboard players reset #target_uid bb.ae.uid2
scoreboard players reset #target_uid bb.ae.uid3
scoreboard players reset #target_uid bb.ae.uid4