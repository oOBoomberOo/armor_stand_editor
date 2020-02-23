scoreboard players operation @s bb.ae.uid = #bb.ae.target_uid bb.ae.uid
scoreboard players operation @s bb.ae.state = #bb.ae.selector.state bb.variable

#define tag boomber.armor_stand.posing
tag @s add boomber.armor_stand.posing

scoreboard players operation #bb.db.input bb.variable = @s bb.ae.uid
function boomber:database/id/decode

#define storage boomber:armor_stand/input
data remove storage boomber:armor_stand/input data
data merge storage boomber:armor_stand/input {data: {}}
data modify storage boomber:armor_stand/input data.id set from storage boomber:database/decode_output output
data modify storage boomber:armor_stand/input data.pose set from entity @s Pose

data modify storage boomber:armor_stand/logs database append from storage boomber:armor_stand/input data
data remove storage boomber:armor_stand/input data