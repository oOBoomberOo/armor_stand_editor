scoreboard players operation #bb.ae.part bb.variable = #bb.ae.selector.state bb.variable

execute unless predicate boomber:armor_stand/is_sneaking run function boomber:armor_stand/player/state/left_control/toggle
execute if predicate boomber:armor_stand/is_sneaking run function boomber:armor_stand/player/state/left_control/reset

scoreboard players reset #bb.ae.part bb.variable