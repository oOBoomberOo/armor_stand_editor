#define tag boomber.armor_stand.target
#define tag boomber.armor_stand.selector
tag @e[type=armor_stand, tag=!global.ignore, tag=!global.ignore.pos, limit=1, sort=nearest] add boomber.armor_stand.selector
tag @s add boomber.armor_stand.target

function boomber:armor_stand/selector/prepare/player_rotation
execute as @e[tag=boomber.armor_stand.selector] at @s rotated ~ 0 run function boomber:armor_stand/selector/query

scoreboard players operation #bb.ae.target_uid bb.ae.uid = @s bb.ae.uid
execute as @e[tag=boomber.armor_stand.selector] at @s run function boomber:armor_stand/pose/tag

tag @e[tag=boomber.armor_stand.selector] remove boomber.armor_stand.selector
tag @s remove boomber.armor_stand.target