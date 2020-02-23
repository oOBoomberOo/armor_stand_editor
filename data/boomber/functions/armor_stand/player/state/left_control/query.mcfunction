#define tag boomber.armor_stand.target
#define tag boomber.armor_stand.selector
tag @s add boomber.armor_stand.target

function boomber:armor_stand/selector/prepare/player_rotation
execute as @e[tag=boomber.armor_stand.selector] at @s rotated ~ 0 run function boomber:armor_stand/selector/query

execute unless score #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum run function boomber:armor_stand/player/state/left_control/pass

tag @s remove boomber.armor_stand.target