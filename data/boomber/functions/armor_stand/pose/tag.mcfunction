scoreboard players operation @s bb.ae.uid1 = #target_uid bb.ae.uid1
scoreboard players operation @s bb.ae.uid2 = #target_uid bb.ae.uid2
scoreboard players operation @s bb.ae.uid3 = #target_uid bb.ae.uid3
scoreboard players operation @s bb.ae.uid4 = #target_uid bb.ae.uid4
scoreboard players operation @s bb.ae.state = selector.state bb.ae.var

#define tag boomber.armor_stand.posing
tag @s add boomber.armor_stand.posing
tag @s add global.ignore
tag @s add global.ignore.kill
tag @s add global.ignore.gui
tag @s add global.ignore.pos

function boomber:armor_stand/teleporter/update_coord

scoreboard players operation #bb.db.input bb.ae.var = @s bb.ae.uid4
function boomber:database/id/decode

#define storage boomber:armor_stand/input
data remove storage boomber:armor_stand/input data
data merge storage boomber:armor_stand/input {data: {}}
data modify storage boomber:armor_stand/input data.id set from storage boomber:database/decode_output output
data modify storage boomber:armor_stand/input data.Pose set from entity @s Pose
data modify storage boomber:armor_stand/input data.Pos set from entity @s Pos
data modify storage boomber:armor_stand/input data.Rotation set from entity @s Rotation

data modify storage boomber:armor_stand/logs database append from storage boomber:armor_stand/input data
data remove storage boomber:armor_stand/input data

data modify entity @s Glowing set value 1b
data modify entity @s Invulnerable set value 1b