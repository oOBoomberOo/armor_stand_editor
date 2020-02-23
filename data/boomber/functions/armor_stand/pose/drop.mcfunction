scoreboard players operation #bb.db.input bb.variable = @s bb.ae.uid
function boomber:database/id/decode
data modify storage boomber:database/index_input id set from storage boomber:database/decode_output output
data modify storage boomber:database/list database set from storage boomber:armor_stand/logs database
function boomber:database/id/index
data modify storage boomber:armor_stand/logs database set from storage boomber:database/index_output leftover

scoreboard players reset @s bb.ae.uid
scoreboard players reset @s bb.ae.state
tag @s remove boomber.armor_stand.posing