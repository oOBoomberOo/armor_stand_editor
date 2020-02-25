scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.selector] at @s run function boomber:armor_stand/pose/tag
function boomber:armor_stand/player/change_state/move_joint

scoreboard players reset #bb.ae.target_uid bb.ae.uid