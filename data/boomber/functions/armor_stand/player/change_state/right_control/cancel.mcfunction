scoreboard players operation #bb.db.input bb.variable = #bb.ae.target_uid bb.ae.uid
function boomber:database/id/decode
data modify storage boomber:database/index_input id set from storage boomber:database/decode_output output
data modify storage boomber:database/list database set from storage boomber:armor_stand/logs database
function boomber:database/id/index

execute as @e[tag=boomber.armor_stand.target] run data modify entity @s Pose set from storage boomber:database/index_output output.pose
execute as @e[tag=boomber.armor_stand.target] at @s run function boomber:armor_stand/pose/drop

function boomber:armor_stand/player/change_state/unequip