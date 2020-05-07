scoreboard players operation #bb.db.input bb.ae.var = #target_uid bb.ae.uid4
function boomber:database/id/decode
data modify storage boomber:database/index_input id set from storage boomber:database/decode_output output
data modify storage boomber:database/list database set from storage boomber:armor_stand/logs database
function boomber:database/id/index

data modify entity @s Pose set from storage boomber:database/index_output output.Pose
data modify entity @s Pos set from storage boomber:database/index_output output.Pos
data modify entity @s Rotation set from storage boomber:database/index_output output.Rotation

data modify storage boomber:armor_stand/logs database set from storage boomber:database/index_output leftover

function boomber:armor_stand/pose/drop

title @a[tag=boomber.armor_stand.player] actionbar [{"text": "Cancelled...", "color": "red"}]