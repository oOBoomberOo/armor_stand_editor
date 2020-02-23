#define tag boomber.armor_stand.target
#define tag boomber.armor_stand.selector
tag @e[type=armor_stand, tag=!global.ignore, tag=!global.ignore.pos, limit=1, sort=nearest] add boomber.armor_stand.selector
tag @s add boomber.armor_stand.target

function boomber:armor_stand/selector/prepare/player_rotation
execute as @e[tag=boomber.armor_stand.selector] at @s rotated ~ 0 run function boomber:armor_stand/selector/query

execute unless predicate boomber:armor_stand/is_sneaking run function boomber:armor_stand/player/state/left_control/toggle
execute if predicate boomber:armor_stand/is_sneaking run function boomber:armor_stand/player/state/left_control/reset

tag @e[tag=boomber.armor_stand.selector] remove boomber.armor_stand.selector
tag @s remove boomber.armor_stand.target