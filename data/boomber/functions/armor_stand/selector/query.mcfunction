# input:
# - @s = armor stand rotated ~ 0
# - player = { boomber.armor_stand.target }
# - #bb.ae.player.rx & #bb.ae.player.ry

#define entity #bb.ae.selector.state
scoreboard players operation #bb.ae.selector.state bb.variable = #bb.ae.selector.idle bb.enum

# TODO
execute positioned ^ ^1.7 ^ run function boomber:armor_stand/selector/query/head
execute positioned ^ ^1.3 ^ run function boomber:armor_stand/selector/query/body
execute positioned ^-0.3 ^1.5 ^ run function boomber:armor_stand/selector/query/right_arm
execute positioned ^0.3 ^1.5 ^ run function boomber:armor_stand/selector/query/left_arm
execute positioned ^-0.2 ^0.8 ^ run function boomber:armor_stand/selector/query/right_leg
execute positioned ^0.2 ^0.8 ^ run function boomber:armor_stand/selector/query/left_leg
execute positioned ^ ^0.0 ^ run function boomber:armor_stand/selector/query/base_plate

execute at @p[tag=boomber.armor_stand.target] as @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] run scoreboard players operation #bb.ae.selector.state bb.variable = @s bb.ae.state
function boomber:armor_stand/vector/clear