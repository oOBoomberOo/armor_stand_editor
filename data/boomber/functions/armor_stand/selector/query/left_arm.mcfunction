function boomber:armor_stand/selector/difference

execute if score #bb.ae.rx bb.calc > #bb.ae.selector.min_difference bb.const if score #bb.ae.rx bb.calc < #bb.ae.selector.max_difference bb.const if score #bb.ae.ry bb.calc > #bb.ae.selector.min_difference bb.const if score #bb.ae.ry bb.calc < #bb.ae.selector.max_difference bb.const run scoreboard players operation @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] bb.ae.state = #bb.ae.selector.left_arm bb.enum

execute as @e[tag=boomber.armor_stand.vector, limit=1, sort=nearest] unless score @s bb.ae.state matches -2147483648..2147483647 run kill @s