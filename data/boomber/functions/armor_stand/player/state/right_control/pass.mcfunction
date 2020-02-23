#define tag boomber.armor_stand.target
#define tag boomber.armor_stand.selector
tag @e[type=armor_stand, limit=1, sort=nearest] add boomber.armor_stand.selector
tag @s add boomber.armor_stand.target

function boomber:armor_stand/selector/prepare/player_rotation
execute as @e[tag=boomber.armor_stand.selector] at @s rotated ~ 0 run function boomber:armor_stand/selector/query

tag @e[tag=boomber.armor_stand.selector] remove boomber.armor_stand.selector
tag @s remove boomber.armor_stand.target