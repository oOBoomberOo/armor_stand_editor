tag @s add boomber.armor_stand.player
scoreboard players operation part bb.ae.var = selector.state bb.ae.var

execute unless predicate boomber:armor_stand/is_sneaking run function boomber:armor_stand/player/state/left_control/toggle
execute if predicate boomber:armor_stand/is_sneaking run function boomber:armor_stand/player/state/left_control/reset

scoreboard players reset part bb.ae.var
tag @s remove boomber.armor_stand.player